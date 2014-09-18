class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :order_id
      t.string :card_type
      t.string :card_name
      t.string :card_number
      t.string :expiry_month
      t.string :expiry_year
      t.string :cvc

      t.timestamps
    end
  end
end
