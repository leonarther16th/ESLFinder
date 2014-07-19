class CreateAppSettings < ActiveRecord::Migration
  def change
    create_table :app_settings do |t|
      t.string :name
      t.text :options

      t.timestamps
    end
  end
end
