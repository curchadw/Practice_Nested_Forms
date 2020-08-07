class Flight < ApplicationRecord
    belongs_to :pilot
    belongs_to :passenger
    accepts_nested_attributes_for :pilot

end