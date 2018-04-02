
require 'rubygems'
require 'httparty'
require 'json'
require 'ostruct'

require 'pp'
url = 'https://api.keeptruckin.com/v1'
headers = { 'content-type': 'application/json', 'X-Api-Key': 'dd07c811-10ff-4b66-b5dd-f7353719e5c9' }

@all_vehicles = HTTParty.get("#{url}/vehicles", headers: headers)


@vehicles_response = JSON.parse(@all_vehicles.body, object_class: OpenStruct)


pp @vehicles_response
puts "*" * 5


@vehicles_response.vehicles.each do |data|
  @vehicle = data.vehicle
  @current_driver = data.vehicle.current_driver
  @edl = data.vehicle.edl_device

  puts "Vehicle ID: #{@vehicle.id}"
  puts "Vehicle Number: #{@vehicle.number}"
  puts "Plate Number: #{@vehicle.license_plate_number}"
  puts "Ifta: #{@vehicle.ifta}"
  puts "VIN: #{@vehicle.vin}"
  puts "Company ID: #{@vehicle.company_id.class}"
  if !@vehicle.eld_device.nil?
  puts "EDL: ID = #{@vehicle.eld_device.id} | Identifier = #{@vehicle.eld_device.identifier} | Model = #{@vehicle.eld_device.model}"
  else
    puts "EDL: No EDL"
  end

if !@current_driver.nil?
  puts "Driver Name: #{@current_driver.first_name} #{@current_driver.last_name} ID: #{@current_driver.id.class}"
end

  # puts "EDL ID: #{@edl.id}"
  # puts "EDL identifier: #{@edl.identifier}"
  # puts "EDL Model: #{@edl.model}" 
  # puts @edl.inspect



# if !@current_driver.nil?
#   puts @current_driver.driver_company_id
# end

end


 

# @vehicle_locations_response.vehicles.each do |data|
#   @vehicle = data.vehicle
#   @current_driver = data.vehicle.current_driver
#   @current_location = data.vehicle.current_location

#   if !@current_driver.nil? && @current_driver.driver_company_id == '40268793320186691c34cdb5bb1d3456'
#   puts "Vehicle ID: #{@vehicle.id}"
#   puts "Vehicle number: #{@vehicle.number}"
#   puts "Vehicle VIN: #{@vehicle.vin}"
#   puts ''
# puts '---------------------START @current_driver'
# if !@current_driver.nil?
#   puts "First Name: #{@current_driver.first_name}"
#   puts "Last Name: #{@current_driver.last_name}"
#   puts "API driver_company_id: #{@current_driver.driver_company_id}"
# end
# puts '---------------------END @current_driver'
# puts ''
# puts '---------------------Start @current_location'

# if !@current_location.nil?
#   puts "LAT: #{@current_location.lat}"
#   puts "LNG: #{@current_location.lat}"
# end
# puts '---------------------END @current_location'
# puts ''

# end
# end




