class Product < ApplicationRecord
  belongs_to :supplier

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
