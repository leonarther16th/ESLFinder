class AddRegularPriceToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :regular_price, :float
  end
end
