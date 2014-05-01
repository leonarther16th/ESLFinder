class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :city_id
      t.integer :num_weeks
      t.integer :num_seats
      t.date :start_date
      t.string :student_name
      t.integer :program_id
      t.integer :user_id

      t.timestamps
    end
  end
end
