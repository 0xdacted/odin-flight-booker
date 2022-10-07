class Booking < ApplicationRecord
  belongs_to :flight
  belongs_to :passenger through: :flight
end
