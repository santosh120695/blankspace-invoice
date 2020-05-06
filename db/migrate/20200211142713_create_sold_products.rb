class CreateSoldProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :sold_products do |t|
      t.references :product, foreign_key: true
      t.references :invoice, foreign_key: true
      t.integer :sold_price
      t.integer :sold_quantity
      t.string :product_name

      t.timestamps
    end
  end
end
