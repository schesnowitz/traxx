class CreateUpdateDriverProfileJob < ApplicationJob 


  def perform(*args)

    @url = 'https://api.keeptruckin.com/v1'
    @headers = { 'content-type': 'application/json', 'X-Api-Key': ENV["KEEP_TRUCKIN_KEY"] }
    @all_drivers = HTTParty.get("#{@url}/users", headers: @headers)
    @drivers_response = JSON.parse(@all_drivers.body, object_class: OpenStruct)

    @drivers_response.users.each do |data| 
    driver = data.user
    # driver = data.driver.current_driver 
    api_id                          = driver.id
    email                           = driver.email
    first_name                      = driver.first_name
    last_name                       = driver.last_name
    username                        = driver.username
    phone                           = driver.phone
    phone_ext                       = driver.phone_ext
    time_zone                       = driver.time_zone
    metric_units                    = driver.metric_units
    carrier_name                    = driver.carrier_name
    carrier_street                  = driver.carrier_street
    carrier_city                    = driver.carrier_city
    carrier_state                   = driver.carrier_state
    carrier_zip                     = driver.carrier_zip
    violation_alerts                = driver.violation_alerts
    terminal_street                 = driver.terminal_street
    terminal_city                   = driver.terminal_city
    terminal_state                  = driver.terminal_state
    terminal_zip                    = driver.terminal_zip
    cycle                           = driver.cycle
    hour_24_restart                 = driver.exception_24_hour_restart
    eight_hour_break                = driver.exception_8_hour_break
    exception_wait_time             = driver.exception_wait_time
    exception_short_haul            = driver.exception_short_haul
    farm_school_bus                 = driver.exception_ca_farm_school_bus
    cycle2                          = driver.cycle2
    hour_24_restart2                = driver.exception_24_hour_restart2
    eight_hour_break2               = driver.exception_8_hour_break2
    exception_wait_time2            = driver.exception_wait_time2
    exception_short_haul2           = driver.exception_short_haul2
    farm_school_bus2                = driver.exception_ca_farm_school_bus2
    export_combined                 = driver.export_combined
    export_recap                    = driver.export_recap
    export_odometers                = driver.export_odometers
    drivername                      = driver.drivername
    driver_company_id               = driver.driver_company_id
    minute_logs                     = driver.minute_logs
    duty_status                     = driver.duty_status
    eld_mode                        = driver.eld_mode
    license_number                  = driver.drivers_license_number
    drivers_license_state           = driver.drivers_license_state
    yard_moves_enabled              = driver.yard_moves_enabled
    pce                             = driver.personal_conveyance_enabled
    manual_driving_enabled          = driver.manual_driving_enabled
    role                            = driver.role
    status                          = driver.status
   
      if role == 'driver' && email != ''
        new_or_update = DriverProfile.find_or_initialize_by(api_id: api_id)
        new_or_update.api_id = api_id
        new_or_update.email = email 
        new_or_update.first_name = first_name 
        new_or_update.last_name = last_name 
        new_or_update.username = username 
        new_or_update.phone = phone
        new_or_update.phone_ext = phone_ext
        new_or_update.time_zone = time_zone 
        new_or_update.metric_units = metric_units
        new_or_update.carrier_name = carrier_name
        new_or_update.carrier_street = carrier_street
        new_or_update.carrier_city = carrier_city
        new_or_update.carrier_state = carrier_state
        new_or_update.carrier_zip = carrier_zip
        new_or_update.violation_alerts = violation_alerts
        new_or_update.terminal_street = terminal_street
        new_or_update.terminal_city = terminal_city
        new_or_update.terminal_state = terminal_state
        new_or_update.terminal_zip = terminal_zip
        new_or_update.cycle = cycle
        new_or_update.exception_24_hour_restart = hour_24_restart 
        new_or_update.exception_8_hour_break = eight_hour_break
        new_or_update.exception_wait_time = exception_wait_time
        new_or_update.exception_short_haul = exception_short_haul
        new_or_update.exception_ca_farm_school_bus = farm_school_bus

        new_or_update.cycle2 = cycle2
        new_or_update.exception_24_hour_restart2 =  hour_24_restart2
        new_or_update.exception_8_hour_break2 = eight_hour_break2
        new_or_update.exception_wait_time2 = exception_wait_time2
        new_or_update.exception_short_haul2 = exception_short_haul2
        new_or_update.exception_ca_farm_school_bus2 = farm_school_bus2

        new_or_update.export_combined = export_combined
        new_or_update.export_recap = export_recap
        new_or_update.export_odometers = export_odometers
        
        new_or_update.minute_logs = minute_logs
        new_or_update.duty_status = duty_status
        new_or_update.eld_mode = eld_mode
        new_or_update.drivers_license_number = license_number
        new_or_update.drivers_license_state = drivers_license_state
        new_or_update.yard_moves_enabled = yard_moves_enabled
        new_or_update.personal_conveyance_enabled = pce
        new_or_update.manual_driving_enabled = manual_driving_enabled
        new_or_update.status = status
        new_or_update.role = role
         
        new_or_update.save
        sleep 5  
      end
    end
  end
end 

