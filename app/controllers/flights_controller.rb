class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |airport| [airport.code, airport.id]}
    @date_options = Flight.all.map { |flight| [flight.departure_time] }.uniq
    @available_flights = find_flights
  end

  def find_flights
    Flight.where(departure_airport: params[:departure_airport],
                arrival_airport: params[:arrival_airport]
    )
  end


end
