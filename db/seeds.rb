app_setting = AppSetting.create!(
  hidden_sidebar: false,
  theme_color: '2'
)

app_setting = AppSetting.find_or_initialize_by(id: 1)
app_setting.hidden_sidebar = false
app_setting.theme_color = '8'
app_setting.save 
puts app_setting.inspect

