class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :product_name, null: false
      t.decimal :price, precision: 10, scale: 2
      t.integer :quantity, default: 0
      t.string :unit
      t.timestamps
    end
  end
end
