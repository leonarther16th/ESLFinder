class AddPayInToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :pay_within, :integer
  end
end
