class CreateAppSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :app_settings do |t|
      t.string :theme_color
      t.boolean :hidden_sidebar
      t.boolean :boxed_content
      t.string :carrier_name
      t.string :carrier_street
      t.string :carrier_city
      t.string :carrier_state
      t.string :carrier_zip
      t.string :terminal_name
      t.string :terminal_street
      t.string :terminal_city
      t.string :terminal_state
      t.string :terminal_zip
      t.string :driver_temp_password
      t.timestamps
    end
  end
end
