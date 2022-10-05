class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |airport| [airport.code, airport.id]}
    @year_options = Flight.all.map { |flight| [flight.departure_time.year] }.uniq
    @month_options = Flight.all.map { |flight| [flight.departure_time.month] }.uniq
    @day_options = Flight.all.map { |flight| [flight.departure_time.day] }.uniq
    @available_flights = find_flights
  end

  def find_flights
    Flight.where(departure_airport: params[:departure_airport],
                arrival_airport: params[:arrival_airport],
                year: params[:year],
                month: params[:month],
                day: params[:day]
    )
  end


end
