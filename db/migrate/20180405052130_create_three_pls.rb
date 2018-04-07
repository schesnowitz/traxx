class CreateThreePls < ActiveRecord::Migration[5.2]
  def change
    create_table :three_pls do |t|
      t.string :name
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website
      t.string :contact_name
      t.string :notes
      t.string :dot
      t.string :mc

      t.timestamps
    end
  end
end
