class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :input
      t.string :og_language
      t.string :output
      t.string :tr_language
      t.integer :category_id
      t.string :url
      t.timestamps
    end
  end
end
