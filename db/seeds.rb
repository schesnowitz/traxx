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
app_setting.carrier_state = "Michigan"
app_setting.carrier_zip = "48080"
app_setting.terminal_name = "Traxx Transport"
app_setting.terminal_street = "23012 Rosedale Street"
app_setting.terminal_city = "Detroit"
app_setting.terminal_state = "Michigan"
app_setting.terminal_zip = "48080"
app_setting.save 
puts app_setting.inspect

terminal = Terminal.create!(
  name: "Detroit Central",
  street: "8 Mile",
  city: "Detroit",
  state: "Michigan",
  zip: "808080",
  telephone: "555.333.2214",
  app_setting_id: 1
)
puts terminal.inspect

terminal2 = Terminal.create!(
  name: "Toronto Main",
  street: "Young",
  city: "Toronto",
  state: "Ontario",
  zip: "N3H 6R7",
  telephone: "905.365.5555",
  app_setting_id: 1
)
puts terminal2.inspect

driver_profile_1 = DriverProfile.create!(
  email: 's.chesnowitz@gmail.com',
  first_name: 'Steve',
  last_name: '@ gmail',
  terminal_id: 1
  )
puts driver_profile_1.inspect

driver_profile_2 = DriverProfile.create!(
  email: 'steve@chesnowitz.com',
  first_name: 'Steve',
  last_name: '@ Chesnowitz',
  terminal_id: 2
  )
puts driver_profile_2.inspect

