class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :city_id
      t.integer :num_seats
      t.integer :num_weeks
      t.float :week_price
      t.float :student_week_price
      t.date :available_from_date
      t.date :available_to_date
      t.string :created_by
      t.boolean :active

      t.timestamps
    end
  end
end
