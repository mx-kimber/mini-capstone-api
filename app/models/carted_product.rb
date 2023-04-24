class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :orders, optional: true
  belongs_to :product
  # has_many :carted_products
end
