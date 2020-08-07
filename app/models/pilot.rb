class Pilot < ApplicationRecord
    has_many :flights
    has_many :pilots, through: :flights
    
    
end