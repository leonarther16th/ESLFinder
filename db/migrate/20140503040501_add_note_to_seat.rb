class AddNoteToSeat < ActiveRecord::Migration
  def change
    add_column :seats, :note, :text
  end
end
