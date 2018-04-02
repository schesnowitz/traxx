class CreateVehicleJob < ApplicationJob 
  
  queue_as :default
  
    def perform(vehicle_id)
    vehicle = Vehicle.find(vehicle_id)
    # @vehicle = Vehicle.new
    @url = 'https://api.keeptruckin.com/v1'
    @headers = { 'content-type': 'application/json', 'X-Api-Key': 'dd07c811-10ff-4b66-b5dd-f7353719e5c9' } 
    request = HTTParty.post("#{@url}/vehicles/", headers: @headers, 
    body: 
    { 
      number: vehicle.number, 
      vin: vehicle.vin,
      make: vehicle.make, 
      model: vehicle.model,
      year: vehicle.year,  
      status: vehicle.status, 
      ifta: vehicle.ifta, 
      license_plate_state: vehicle.license_plate_state, 
      license_plate_number: vehicle.license_plate_number, 
      metric_units: vehicle.metric_units, 
      fuel_type: vehicle.fuel_type, 
      prevent_auto_odometer_entry: vehicle.prevent_auto_odometer_entry 
    }.to_json)
    # @user_response = JSON.parse(@response.body, object_class: OpenStruct)
    
    # puts @user_response.body, @user_response.message
    puts "request Body: #{request.body}", "request Code: #{request.code}", "request Message: #{request.message}"

    puts "Make: #{vehicle.make}, Model #{vehicle.model}"
    sleep 5
  end
end
