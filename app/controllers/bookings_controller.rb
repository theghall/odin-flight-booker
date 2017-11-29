class BookingsController < ApplicationController
  def new
    @flight = Flight.find(flight_params[:id])

    @from_airport = @flight.departing_airport.code

    @to_airport = @flight.arrival_airport.code

    @departs = @flight.departs

    @num_tickets = flight_params[:num_tickets].to_i

    @booking = Booking.new(flight_id: @flight.id)

    @num_tickets.times { @booking.passengers.build }

    @index = 1
  end

  def create
    @booking = Booking.new(booking_params)

    @booking.save

    redirect_to booking_path(@booking) 
  end 

  def show
    booking = Booking.find(params[:id])

    flight = booking.flight 

    @flight_from = flight.departing_airport.code

    @flight_to = flight.arrival_airport.code

    @departs = flight.departs

    @passengers = booking.passengers
  end

  private

    def flight_params
      params.require(:flight).permit(:id, :num_tickets)
    end

    def booking_params
      params.require(:booking).permit(:flight_id, :passengers_attributes => [:id, :name, :email])
    end
end

