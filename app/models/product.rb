class Product < ApplicationRecord
  has_many :users
  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products


  # def categories
  #   categories = []
  #   category_products.each do |cp|
  #     categories << cp.category
  #   end
  #   categories
  # end


  def is_discounted?
    if price <= 10_000
      return true
    else
      return false
    end
  end

  def tax
   price * 0.09
  end

  def total
    price + tax
  end


end
