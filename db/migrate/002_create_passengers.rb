class CreatePassengers < ActiveRecord::Migration[4.2]
    def change
        create_table :passengers do |t|
            t.string :name
            t.timestamps

        end
    end

end