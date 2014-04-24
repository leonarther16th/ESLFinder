class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :courses, :course, :name
  end
end
