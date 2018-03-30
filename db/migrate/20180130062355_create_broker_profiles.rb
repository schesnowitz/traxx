class CreateBrokerProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :broker_profiles do |t|
      t.string :company_name
      t.string :street
      t.string :city
      t.string :state_provence
      t.string :postal_code
      t.string :telephone
      t.string :fax
      t.string :email
      t.string :website
      t.string :logo
      t.string :broker_mc_number
      t.string :carrier_mc_number
      t.string :us_dot_number
      t.string :contact_person0

      t.timestamps
    end
  end
end
