class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_code
      t.integer :total_available_quantity
      t.integer :price

      t.timestamps
    end
  end
end
