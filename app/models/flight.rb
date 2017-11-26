class Flight < ApplicationRecord
  belongs_to :departing_airports, :class_name => 'Airport', :foreign_key => 'from_code_id'
  belongs_to :arrival_airports, :class_name => 'Airport', :foreign_key => 'to_code_id'
end
