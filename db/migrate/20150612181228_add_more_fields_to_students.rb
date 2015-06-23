class AddMoreFieldsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :birth_date, :date
    add_column :students, :eng_level, :string
    add_column :students, :gender, :string
  end
end
