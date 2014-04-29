class AddFirstNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :agency_id, :integer
    add_column :users, :agency_name, :string
  end
end
