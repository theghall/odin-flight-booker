class Flight < ApplicationRecord
  belongs_to :departing_airport, :class_name => 'Airport', :foreign_key => 'from_code_id'
  belongs_to :arrival_airport, :class_name => 'Airport', :foreign_key => 'to_code_id'
  has_many :bookings
  has_many :passenger_bookings, through: :bookings
  has_many :passengers, through: :passenger_bookings
end
