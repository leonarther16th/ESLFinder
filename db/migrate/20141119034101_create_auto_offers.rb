class CreateAutoOffers < ActiveRecord::Migration
  def change
    create_table :auto_offers do |t|
      t.float :weekly_price
      t.integer :min_num_weeks
      t.integer :max_num_weeks
      t.date :start_date
      t.date :end_date
      t.integer :num_of_seats
      t.integer :weekly_limit
      t.string :flag
      t.integer :pay_within
      t.integer :course_id
      t.float :regular_price
      t.string :regions
      t.string :schools

      t.timestamps
    end
  end
end
