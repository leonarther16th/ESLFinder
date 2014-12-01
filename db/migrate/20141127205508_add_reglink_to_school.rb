class AddReglinkToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :reg_link, :string
  end
end
