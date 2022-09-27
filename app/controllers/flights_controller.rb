class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @airport_options = Airport.all.map { |a| [a.code, a.id] }
    @flights = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], date: params[:date])

  end
end
