class Invoice < ApplicationRecord
  has_many :sold_products
  has_many :invoice_additional_field_datas

  accepts_nested_attributes_for :sold_products, reject_if: :all_blank, allow_destroy: true
end
