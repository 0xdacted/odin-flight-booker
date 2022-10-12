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
      render @booking
    else 
      redirect_to root_path
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end

  private
  def booking_params
    params.require(:booking).permit(
      :flight_id,
      :tickets,
      passengers_attributes: [:name, :email]
    )
  end

end
