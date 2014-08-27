class AddCourseIdToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :course_id, :integer
  end
end
