class CreateUserStates < ActiveRecord::Migration
  def change
    create_table :user_states do |t|
      t.integer :user_id
      t.string :user_state
      t.boolean :active

      t.timestamps
    end
  end
end
