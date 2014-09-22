class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :order_id
      t.string :first_name
      t.string :last_name
      t.integer :country_id

      t.timestamps
    end
  end
end
