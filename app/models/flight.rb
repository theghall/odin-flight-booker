class Flight < ApplicationRecord
  belongs_to :departing_airport, :class_name => 'Airport', :foreign_key => 'from_code_id'
  belongs_to :arrival_airport, :class_name => 'Airport', :foreign_key => 'to_code_id'

  has_many :bookings
  has_many :passenger_bookings, through: :bookings
  has_many :passengers, through: :passenger_bookings

  scope :future_flights, -> { where('departs > ?', Time.now) }

  def self.depature_dates
    Flight.pluck(:departs).map{|d| d.strftime("%m-%d-%Y")}.uniq
  end

  def self.available_flights(date, from, to)
    Flight.where(from_code_id: from).where(to_code_id: to).where(departs: date.beginning_of_day..date.end_of_day)
  end

end
