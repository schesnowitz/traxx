# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_04_01_022314) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_admins_on_unlock_token", unique: true
  end

  create_table "app_settings", force: :cascade do |t|
    t.string "theme_color"
    t.boolean "hidden_sidebar"
    t.boolean "boxed_content"
    t.string "carrier_name"
    t.string "carrier_street"
    t.string "carrier_city"
    t.string "carrier_state"
    t.string "carrier_zip"
    t.string "terminal_name"
    t.string "terminal_street"
    t.string "terminal_city"
    t.string "terminal_state"
    t.string "terminal_zip"
    t.string "driver_temp_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "broker_profiles", force: :cascade do |t|
    t.string "company_name"
    t.string "street"
    t.string "city"
    t.string "state_provence"
    t.string "postal_code"
    t.string "telephone"
    t.string "fax"
    t.string "email"
    t.string "website"
    t.string "logo"
    t.string "broker_mc_number"
    t.string "carrier_mc_number"
    t.string "us_dot_number"
    t.string "contact_person0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brokers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_brokers_on_confirmation_token", unique: true
    t.index ["email"], name: "index_brokers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_brokers_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_brokers_on_unlock_token", unique: true
  end

  create_table "dispatchers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_dispatchers_on_confirmation_token", unique: true
    t.index ["email"], name: "index_dispatchers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_dispatchers_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_dispatchers_on_unlock_token", unique: true
  end

  create_table "driver_profiles", force: :cascade do |t|
    t.string "driver_company_id"
    t.integer "api_id"
    t.string "email"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "phone_ext"
    t.string "image"
    t.string "emergency_contact_name"
    t.string "emergency_contact_phone"
    t.string "time_zone"
    t.string "metric_units"
    t.string "carrier_name"
    t.string "carrier_street"
    t.string "carrier_city"
    t.string "carrier_state"
    t.string "carrier_zip"
    t.string "terminal_name"
    t.string "terminal_street"
    t.string "terminal_city"
    t.string "terminal_state"
    t.string "terminal_zip"
    t.string "violation_alerts"
    t.string "cycle"
    t.string "exception_24_hour_restart"
    t.string "exception_8_hour_break"
    t.string "exception_wait_time"
    t.string "exception_short_haul"
    t.string "exception_ca_farm_school_bus"
    t.string "cycle2"
    t.string "exception_24_hour_restart2"
    t.string "exception_8_hour_break2"
    t.string "exception_wait_time2"
    t.string "exception_short_haul2"
    t.string "exception_ca_farm_school_bus2"
    t.string "export_combined"
    t.string "export_recap"
    t.string "export_odometers"
    t.string "username"
    t.string "minute_logs"
    t.string "duty_status"
    t.string "eld_mode"
    t.string "drivers_license_number"
    t.string "drivers_license_state"
    t.string "yard_moves_enabled"
    t.string "personal_conveyance_enabled"
    t.string "manual_driving_enabled"
    t.string "role"
    t.string "status"
    t.integer "terminal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["terminal_id"], name: "index_driver_profiles_on_terminal_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "driver_profile_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_drivers_on_confirmation_token", unique: true
    t.index ["driver_profile_id"], name: "index_drivers_on_driver_profile_id"
    t.index ["email"], name: "index_drivers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_drivers_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_drivers_on_unlock_token", unique: true
  end

  create_table "shipments", force: :cascade do |t|
    t.string "commodity"
    t.string "weight"
    t.string "miles_or_km"
    t.string "load_size"
    t.decimal "miles"
    t.decimal "kilometers"
    t.decimal "invoice_price"
    t.decimal "booking_fee"
    t.decimal "percent_deducted"
    t.decimal "total_company_expenses"
    t.decimal "rate_to_owner_operator"
    t.decimal "percent_coverted_to_dollars"
    t.decimal "driver_cents_pm"
    t.decimal "rate_after_booking_fee"
    t.decimal "agent_fee"
    t.date "pick_up_date"
    t.time "pick_up_time"
    t.date "delivery_date"
    t.time "delivery_time"
    t.string "delivery_notes"
    t.string "equipment_type"
    t.string "status_name"
    t.string "updated_by"
    t.string "special_instructions"
    t.string "dimentions"
    t.string "origin_street"
    t.string "origin_city"
    t.string "origin_state_provence"
    t.string "origin_postal_code"
    t.string "origin_phone"
    t.string "origin_contact"
    t.string "destination_street"
    t.string "destination_city"
    t.string "destination_state_provence"
    t.string "destination_postal_code"
    t.string "destination_phone"
    t.string "destination_contact"
    t.string "shipper_company_name"
    t.string "receiver_company_name"
    t.float "origin_latitude"
    t.float "origin_longitude"
    t.float "destination_latitude"
    t.float "destination_longitude"
    t.integer "percentage_id"
    t.decimal "kilograms"
    t.decimal "pounds"
    t.boolean "is_kilograms"
    t.boolean "is_pounds"
    t.boolean "is_hazmat"
    t.boolean "needs_temp_control"
    t.boolean "is_fahrenheit"
    t.boolean "is_celsius"
    t.decimal "fahrenheit"
    t.decimal "celsius"
    t.string "pick_up_notes"
    t.string "broker_shipper_load_id"
    t.integer "driver_id"
    t.integer "broker_profile_id"
    t.integer "dispatcher_id"
    t.integer "vehcile_id"
    t.string "description"
    t.string "broker_rep_name"
    t.string "broker_rep_email"
    t.string "broker_rep_number"
    t.string "broker_rep_cell"
    t.string "broker_after_hours_instructions"
    t.boolean "has_multiple_pd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["broker_profile_id"], name: "index_shipments_on_broker_profile_id"
    t.index ["dispatcher_id"], name: "index_shipments_on_dispatcher_id"
    t.index ["driver_id"], name: "index_shipments_on_driver_id"
    t.index ["vehcile_id"], name: "index_shipments_on_vehcile_id"
  end

  create_table "terminals", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "telephone"
    t.integer "app_setting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_setting_id"], name: "index_terminals_on_app_setting_id"
  end

  create_table "vehicle_locations", force: :cascade do |t|
    t.integer "api_vehicle_id"
    t.string "location_id"
    t.datetime "time_located_at"
    t.float "latitude"
    t.float "longitude"
    t.float "bearing"
    t.float "engine_hours"
    t.integer "driver_api_id"
    t.float "fuel"
    t.float "odometer"
    t.float "speed"
    t.string "location_description"
    t.string "driver_company_id"
    t.integer "edl_id"
    t.string "edl_identifier"
    t.string "edl_model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_api_id"], name: "index_vehicle_locations_on_driver_api_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "api_vehicle_company_id"
    t.integer "api_id"
    t.string "number"
    t.string "status"
    t.string "ifta"
    t.string "vin"
    t.string "make"
    t.string "model"
    t.string "year"
    t.string "license_plate_state"
    t.string "license_plate_number"
    t.boolean "metric_units"
    t.string "fuel_type"
    t.string "prevent_auto_odometer_entry"
    t.integer "edl_device_id"
    t.string "edl_identifier"
    t.string "edl_model"
    t.integer "api_driver_id"
    t.string "driver_first_name"
    t.string "driver_last_name"
    t.string "driver_username"
    t.string "driver_email"
    t.string "driver_internal_id"
    t.string "driver_status"
    t.string "driver_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
