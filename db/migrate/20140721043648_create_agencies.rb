class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.text :address
      t.integer :country_id
      t.string :city
      t.string :website
      t.string :email
      t.string :ref_num
      t.string :state

      t.timestamps
    end
  end
end
