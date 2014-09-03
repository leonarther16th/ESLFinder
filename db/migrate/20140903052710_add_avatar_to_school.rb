class AddAvatarToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :avatar, :text
  end
end
