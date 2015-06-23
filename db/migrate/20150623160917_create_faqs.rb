class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.string :question
      t.text :answer
      t.string :category
      t.boolean :active

      t.timestamps
    end
  end
end
