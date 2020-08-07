class CreateFlights < ActiveRecord::Migration[4.2]
    def change
        create_table :flights do |t|
            t.integer :flight_number
            t.string :destination
            t.integer :pilot_id
            t.integer :passenger_id

        end
    end

end