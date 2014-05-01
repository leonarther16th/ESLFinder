class ChangeColumnNameToSearches < ActiveRecord::Migration
  def change
  	rename_column :searches, :program_id, :course_id
  end
end
