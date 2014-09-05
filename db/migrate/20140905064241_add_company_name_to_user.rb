class AddCompanyNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :company_name, :string
    add_column :users, :account_type, :string
  end
end
