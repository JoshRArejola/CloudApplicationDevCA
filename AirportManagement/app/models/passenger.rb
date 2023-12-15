class Passenger < ApplicationRecord
    validates :checkIn, :name, :aircraft, :destination, :gate, presence: true
end
