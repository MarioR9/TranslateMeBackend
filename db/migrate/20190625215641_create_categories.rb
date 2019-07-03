class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :language
      t.integer :user_id
      t.string :url
      t.timestamps
    end
  end
end
