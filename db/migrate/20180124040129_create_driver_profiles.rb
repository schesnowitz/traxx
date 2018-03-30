class CreateDriverProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :driver_profiles do |t|
      t.string :driver_company_id
      t.integer :api_id
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :phone_ext
      t.string :image
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.string :time_zone
      t.string :metric_units
      t.string :carrier_name
      t.string :carrier_street
      t.string :carrier_city
      t.string :carrier_state
      t.string :carrier_zip
      t.string :violation_alerts
      t.string :terminal_street
      t.string :terminal_city
      t.string :terminal_state
      t.string :terminal_zip
      t.string :cycle
      t.string :exception_24_hour_restart
      t.string :exception_8_hour_break
      t.string :exception_wait_time
      t.string :exception_short_haul
      t.string :exception_ca_farm_school_bus
      t.string :cycle2
      t.string :exception_24_hour_restart2
      t.string :exception_8_hour_break2
      t.string :exception_wait_time2
      t.string :exception_short_haul2
      t.string :exception_ca_farm_school_bus2
      t.string :export_combined
      t.string :export_recap
      t.string :export_odometers
      t.string :username
      t.string :minute_logs
      t.string :duty_status
      t.string :eld_mode
      t.string :drivers_license_number
      t.string :drivers_license_state
      t.string :yard_moves_enabled
      t.string :personal_conveyance_enabled
      t.string :manual_driving_enabled
      t.string :role
      t.string :status

      t.timestamps
    end
  end
end
