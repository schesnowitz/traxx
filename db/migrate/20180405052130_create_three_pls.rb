class CreateThreePls < ActiveRecord::Migration[5.2]
  def change
    create_table :three_pls do |t|
      t.string :name
      t.string :phone
      t.string :fax
      t.string :email
      t.boolean :use_main_address
      t.string :website
      t.string :contact_name
      t.string :notes
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :dot
      t.string :mc

      t.timestamps
    end
  end
end
