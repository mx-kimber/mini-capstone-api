class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images

  # def supplier
  #   Supplier.where(id: supplier_id)
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
