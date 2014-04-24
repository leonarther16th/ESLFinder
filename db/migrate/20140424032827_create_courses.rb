class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course
      t.float :course_price
      t.integer :active

      t.timestamps
    end
  end
end
