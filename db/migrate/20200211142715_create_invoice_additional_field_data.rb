class CreateInvoiceAdditionalFieldData < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_additional_field_data do |t|
      t.integer :additional_field_id
      t.string :value
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
