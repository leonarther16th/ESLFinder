class AddCodeToSeat < ActiveRecord::Migration
  def change
    add_column :seats, :code, :string
  end
end
