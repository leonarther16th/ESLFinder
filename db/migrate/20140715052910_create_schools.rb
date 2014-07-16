class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :city_id
      t.integer :country_id

      t.timestamps
    end
  end
end