class Airport < ApplicationRecord
  has_many :departing_flights, class_name: 'Flight', foreign_key: 'from_code_id'
  has_many :arriving_flights, class_name: 'Flight', foreign_key: 'to_code_id'
end
