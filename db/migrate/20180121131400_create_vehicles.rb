class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.integer :api_vehicle_company_id
      t.integer :api_id
      t.string :number
      t.string :status
      t.string :ifta
      t.string :vin
      t.string :make
      t.string :model
      t.string :year
      t.string :license_plate_state
      t.string :license_plate_number
      t.boolean :metric_units
      t.string :fuel_type
      t.string :prevent_auto_odometer_entry
      t.integer :edl_device_id
      t.string :edl_identifier
      t.string :edl_model
      t.integer :api_driver_id
      t.string :driver_first_name
      t.string :driver_last_name
      t.string :driver_username
      t.string :driver_email
      t.string :driver_internal_id
      t.string :driver_status
      t.string :driver_role

      t.timestamps
    end
  end
end
