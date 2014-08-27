class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :offer_id
      t.string :state
      t.integer :num_weeks
      t.float :total_price
      t.string :offer_code
      t.date :start_date
      t.date :expire_date
      t.integer :num_seats

      t.timestamps
    end
  end
end
