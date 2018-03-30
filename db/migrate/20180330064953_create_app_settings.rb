class CreateAppSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :app_settings do |t|
      t.string :theme_color
      t.boolean :hidden_sidebar
      t.boolean :boxed_content

      t.timestamps
    end
  end
end
