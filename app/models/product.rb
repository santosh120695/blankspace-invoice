class Product < ApplicationRecord
  has_many :sold_products
  has_many :add_stocks
end
