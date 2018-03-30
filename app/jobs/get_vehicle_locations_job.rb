class GetVehicleLocationsJob < ApplicationJob 


  def perform(*args)
    @id = Vehicle.pluck(:api_id) # integer array
    @query = { 
      'vehicle_ids': @id
    }
    @url = 'https://api.keeptruckin.com/v1'
    @headers = { 'content-type': 'application/json', 'X-Api-Key': ENV["KEEP_TRUCKIN_KEY"] }
    @all_locations = HTTParty.get("#{@url}/vehicle_locations", query: @query, headers: @headers)
    @locations_response = JSON.parse(@all_locations.body, object_class: OpenStruct)

 
    @locations_response.vehicles.each do |data| 
    vehicle = data.vehicle
    driver = data.vehicle.current_driver 
    location = data.vehicle.current_location

  if !vehicle.nil?
    vehicle_api_id                  = vehicle.id
  end


  if !driver.nil?

    driver_api_id                   = driver.id   

  end

  if !location.nil?
    lat                             = location.lat
    lon                             = location.lon 
    time_located_at                 = location.located_at
    bearing                         = location.bearing
    engine_hours                    = location.engine_hours
    location_description            = location.description
    speed                           = location.speed
    odometer                        = location.odometer
    fuel                            = location.fuel  
    location_id                     = location.location_id  
  end


        location = VehicleLocation.new
        location.driver_api_id = driver_api_id
        location.location_id = location_id
        location.latitude = lat
        location.longitude = lon  
        location.api_vehicle_id  = vehicle_api_id
        location.time_located_at = time_located_at
        location.engine_hours = engine_hours
        location.bearing = bearing
        location.location_description = location_description
        location.speed = speed
        location.odometer = odometer
        location.fuel = fuel

        location.save
        sleep 5  
    end
  end
end 

