class AddSchoolsToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :schools, :string
  end
end
