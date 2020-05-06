class SoldProduct < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :invoice
end
