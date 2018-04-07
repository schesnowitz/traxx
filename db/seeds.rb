app_setting = AppSetting.create!(
  hidden_sidebar: false,
  theme_color: '2'
)

app_setting = AppSetting.find_or_initialize_by(id: 1)
app_setting.hidden_sidebar = false
app_setting.theme_color = '8'
app_setting.carrier_name = "Traxx Transport"
app_setting.carrier_street = "23012 Rosedale Street"
app_setting.carrier_city = "Detroit"
app_setting.carrier_state = "MI"
app_setting.carrier_zip = "48080"
app_setting.driver_temp_password = "passw0rd"
app_setting.save 
puts app_setting.inspect

terminal = Terminal.create!(
  name: "Detroit Central",
  street: "2154 8 Mile",
  city: "Detroit",
  state: "MI",
  zip: "808080",
  telephone: "555.333.2214",
  app_setting_id: 1
)
puts terminal.inspect

terminal2 = Terminal.create!(
  name: "Toronto Main",
  street: "6532 Young Street",
  city: "Toronto",
  state: "ON",
  zip: "N3H 6R7",
  telephone: "905.365.5555",
  app_setting_id: 1
)
puts terminal2.inspect

# driver_profile_1 = DriverProfile.create!(
#   email: 's.chesnowitz@gmail.com',
#   first_name: 'Steve',
#   last_name: '@ gmail',
#   role: 'driver',
#   password: 'password',
#   terminal_id: 1
#   )
# puts driver_profile_1.inspect

# driver_profile_2 = DriverProfile.create!(
#   email: 'steve@chesnowitz.com',
#   first_name: 'Steve',
#   last_name: '@ Chesnowitz',
#   role: 'driver',
#   password: 'password',
#   terminal_id: 2
#   )
# puts driver_profile_2.inspect




100.times do |three_pl|
  ThreePl.create!(
    name: Faker::Company.name,
    phone: Faker::PhoneNumber.phone_number,
    fax: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    website: Faker::Internet.url,
    contact_name: Faker::Name.name,
    notes: Faker::Lorem.sentence(2),
    dot: Faker::Number.number(6),
    mc: Faker::Number.number(6)
  )
end
puts "100 3pl's were created"


500.times do |office|
  RegionalOffice.create!(
    office_description: "#{Faker::Address.city} Office",
    street: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    postal: Faker::Address.postcode,
    phone: Faker::PhoneNumber.phone_number,
    fax: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    notes: Faker::Lorem.sentence,
    three_pl_id: "#{rand(1..100)}" 
  )
end
puts "500 Regional Offices were created"