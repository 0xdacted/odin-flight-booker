class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @selected_flight = Flight.find(params[:booking_option])
    @pax = params[:passengers].to_i
    @pax.times {@booking.passengers.build }
  end
end
