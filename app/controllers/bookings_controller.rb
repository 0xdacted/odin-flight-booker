class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @selected_flight = Flight.find(params[:booking_option])
    @pax = params[:tickets].to_i
    @pax.times {@booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      redirect_to root_path
    end
  end

  private
  def booking_params
    params.require(:booking).permit(
      :flight_id,
      :tickets,
      passengers_attributes: %i[name email]
    )
  end

end
