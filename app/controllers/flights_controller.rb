class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |airport| [airport.code, airport.id]}
    @year_options = Flight.all.map { |flight| [flight.departure_time.year] }.uniq
    @month_options = Flight.all.map { |flight| [flight.departure_time.month] }.uniq
    @day_options = Flight.all.map { |flight| [flight.departure_time.day] }.uniq
  end

end
