class CreateCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :categories do |t|
      t.string :category_name, null: false
      t.references :brand, foreign_key: true
      t.timestamps
    end
  end
end
