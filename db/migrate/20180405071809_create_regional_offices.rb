class CreateRegionalOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :regional_offices do |t|
      t.string :office_description
      t.string :street
      t.string :city
      t.string :state
      t.string :postal
      t.string :phone
      t.string :fax
      t.string :email
      t.string :notes
      t.integer :three_pl_id

      t.timestamps
    end
  end
end
