class AddCountryIdToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :country_id, :integer
  end
end
