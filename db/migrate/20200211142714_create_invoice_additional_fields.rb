class CreateInvoiceAdditionalFields < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_additional_fields do |t|
      t.string :field_type
      t.string :display_name
      t.string :key
      t.boolean :active

      t.timestamps
    end
  end
end
