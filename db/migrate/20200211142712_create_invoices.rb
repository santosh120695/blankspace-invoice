class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :invoice_no
      t.date :invoice_date
      t.integer :total_cost
      t.float   :tax
      t.float   :other_charges
      t.float   :discount

      t.timestamps
    end
  end
end
