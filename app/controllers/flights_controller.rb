class FlightsController < ApplicationController
  def index
    @departure_days = Flight.depature_dates

    @airports = Airport.all

    @max_passengers = 4

    if got_search_params?
      from_airport = params[:from]

      to_airport = params[:to]

      departs = Date.strptime(params[:departs], '%m-%d-%Y')

      @num_tickets = params[:num_tickets]

      @flights =  Flight.available_flights(departs, from_airport, to_airport)

      if @flights && @flights.any?
        @from_code = @flights.first.departing_airport.code
        @to_code = @flights.first.arrival_airport.code
      else
        @from_code = Airport.find(params[:from]).code
        @to_code = Airport.find(params[:to]).code
        @depart_date = departs
      end
    end
  end

  def show
  end

  private

    def got_search_params?
      params[:departs]
    end
end
