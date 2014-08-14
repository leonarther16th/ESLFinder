class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :school_id
      t.float :weekly_price
      t.integer :min_num_weeks
      t.integer :max_num_weeks
      t.date :start_date
      t.date :end_date
      t.integer :num_of_seats
      t.integer :weekly_limit
      t.string :flag
      t.string :regions

      t.timestamps
    end
  end
end
