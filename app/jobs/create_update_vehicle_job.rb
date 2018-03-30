class CreateUpdateVehicleJob < ApplicationJob 


  def perform(*args)

    @url = 'https://api.keeptruckin.com/v1'
    @headers = { 'content-type': 'application/json', 'X-Api-Key': ENV["KEEP_TRUCKIN_KEY"] }
    @all_vehicles = HTTParty.get("#{@url}/vehicles", headers: @headers)
    @vehicles_response = JSON.parse(@all_vehicles.body, object_class: OpenStruct)

    @vehicles_response.vehicles.each do |data| 
    vehicle = data.vehicle
    driver = data.vehicle.current_driver 

    if !vehicle.nil? && !vehicle.eld_device.nil?
      response_edl_id = vehicle.eld_device.id
      response_edl_identifier = vehicle.eld_device.identifier
      response_edl_model = vehicle.eld_device.model
    end
 
      api_id = vehicle.id
      response_vehicle_number = vehicle.number 
      response_vehicle_status = vehicle.status 
      response_vehicle_vin = vehicle.vin
      response_vehicle_ifta = vehicle.ifta
      response_vehicle_year = vehicle.year
      response_vehicle_make = vehicle.make
      response_vehicle_model = vehicle.model
      response_vehicle_plate = vehicle.license_plate_number
      response_vehicle_state = vehicle.license_plate_state
      response_vehicle_metric = vehicle.metric_units
      response_vehicle_fuel = vehicle.fuel_type
      response_vehicle_paoe = vehicle.prevent_auto_odometer_entry
    if !driver.nil? && !driver.first_name.nil?
      response_driver_first_name = driver.first_name
    end
    if !driver.nil? && !driver.last_name.nil?
      response_driver_last_name = driver.last_name
    end
    if !driver.nil? && !driver.id.nil?
      response_driver_id = driver.id
    end 
    if !driver.nil? && !driver.username.nil?
      response_driver_username = driver.username
    end
    if !driver.nil? && !driver.email.nil?
      response_driver_email = driver.email
    end 
    if !driver.nil? && !driver.status.nil?
      response_driver_status = driver.status
    end    
    if !driver.nil? && !driver.role.nil?
      response_driver_role = driver.role
    end      


        new_vehicle = Vehicle.find_or_initialize_by(api_id: api_id)

          new_vehicle.api_id = api_id
          new_vehicle.number = response_vehicle_number
          new_vehicle.status = response_vehicle_status
          new_vehicle.ifta = response_vehicle_ifta
          new_vehicle.vin = response_vehicle_vin
          new_vehicle.make = response_vehicle_make
          new_vehicle.model = response_vehicle_model
          new_vehicle.year = response_vehicle_year
          new_vehicle.license_plate_state = response_vehicle_state
          new_vehicle.license_plate_number = response_vehicle_plate
          new_vehicle.metric_units = response_vehicle_metric
          new_vehicle.fuel_type = response_vehicle_fuel
          new_vehicle.prevent_auto_odometer_entry = response_vehicle_paoe
          new_vehicle.edl_device_id = response_edl_id
          new_vehicle.edl_identifier = response_edl_identifier
          new_vehicle.edl_model = response_edl_model
          new_vehicle.api_driver_id = response_driver_id
          new_vehicle.driver_first_name = response_driver_first_name
          new_vehicle.driver_last_name = response_driver_last_name
          new_vehicle.driver_username = response_driver_username
          new_vehicle.driver_email = response_driver_email
          new_vehicle.driver_status = response_driver_status
          new_vehicle.driver_role = response_driver_role
          new_vehicle.save
          sleep 5  

    end
  end
end 


