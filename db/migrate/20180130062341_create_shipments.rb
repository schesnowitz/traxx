class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.string :commodity
      t.string :weight
      t.string :miles_or_km
      t.string :load_size
      t.decimal :miles
      t.decimal :kilometers
      t.decimal :invoice_price
      t.decimal :booking_fee
      t.decimal :percent_deducted
      t.decimal :total_company_expenses
      t.decimal :rate_to_owner_operator
      t.decimal :percent_coverted_to_dollars
      t.decimal :driver_cents_pm
      t.decimal :rate_after_booking_fee
      t.decimal :agent_fee
      t.date :pick_up_date
      t.time :pick_up_time
      t.date :delivery_date
      t.time :delivery_time
      t.string :delivery_notes
      t.string :equipment_type
      t.string :status_name
      t.string :updated_by
      t.string :special_instructions
      t.string :dimentions
      t.string :origin_street
      t.string :origin_city
      t.string :origin_state_provence
      t.string :origin_postal_code
      t.string :origin_phone
      t.string :origin_contact
      t.string :destination_street
      t.string :destination_city
      t.string :destination_state_provence
      t.string :destination_postal_code
      t.string :destination_phone
      t.string :destination_contact
      t.string :shipper_company_name
      t.string :receiver_company_name
      t.float :origin_latitude
      t.float :origin_longitude
      t.float :destination_latitude
      t.float :destination_longitude
      t.integer :percentage_id
      t.decimal :kilograms
      t.decimal :pounds
      t.boolean :is_kilograms
      t.boolean :is_pounds
      t.boolean :is_hazmat
      t.boolean :needs_temp_control
      t.boolean :is_fahrenheit
      t.boolean :is_celsius
      t.decimal :fahrenheit
      t.decimal :celsius
      t.string :pick_up_notes
      t.string :broker_shipper_load_id
      t.integer :driver_id, index: true
      t.integer :broker_profile_id, index: true
      t.integer :dispatcher_id, index: true
      t.integer :vehcile_id, index: true
      t.string :description
      t.string :broker_rep_name
      t.string :broker_rep_email
      t.string :broker_rep_number
      t.string :broker_rep_cell
      t.string :broker_after_hours_instructions
      t.boolean :has_multiple_pd
      t.timestamps
    end
  end
end
