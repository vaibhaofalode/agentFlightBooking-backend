class CreateFlightDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :flight_details do |t|
      t.integer :number
      t.string :source_city
      t.string :destination_city
      t.string :airline_name
      t.datetime :travel_date
      t.time :departure_time
      t.time :arrival_time
      
      t.float :duration
      t.integer :no_of_stops
      t.float :price

      t.timestamps
    end
  end
end
