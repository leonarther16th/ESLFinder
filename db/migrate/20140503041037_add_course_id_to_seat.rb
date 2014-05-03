class AddCourseIdToSeat < ActiveRecord::Migration
  def change
    add_column :seats, :course_id, :integer
  end
end
