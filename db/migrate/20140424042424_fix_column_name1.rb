class FixColumnName1 < ActiveRecord::Migration
  def change
  	rename_column :courses, :course, :name
  end
end
