class PassengerMailer < ApplicationMailer
  default from: 'odin@odinflight.com'

  def thank_you(booking)
    flight = booking.flight

    @from_airport = flight.departing_airport.code

    @to_airport = flight.arrival_airport.code

    @departs = flight.departs

    @passengers = booking.passengers

    mail(to: @passengers.first.email, subject: 'Your booking')

  end
end
