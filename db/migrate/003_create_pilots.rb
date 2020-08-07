class CreatePilots < ActiveRecord::Migration[4.2]
    def change
        create_table :pilots do |t|
            t.string :name
            t.string :rank
            t.timestamps

        end
    end

end