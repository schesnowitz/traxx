class CreateVehicleLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_locations do |t|
      t.integer :api_vehicle_id 
      t.string :location_id
      t.datetime :time_located_at
      t.float :latitude
      t.float :longitude
      t.float :bearing
      t.float :engine_hours
      t.integer :driver_api_id, index: true
      t.float :fuel
      t.float :odometer
      t.float :speed
      t.string :location_description
      t.string :driver_company_id
      t.integer :edl_id 
      t.string :edl_identifier 
      t.string :edl_model
      t.timestamps
    end
  end
end

