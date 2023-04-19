class User < ApplicationRecord
  has_many :orders
  # belongs_to :product

  has_secure_password
  validates :email, presence: true, uniqueness: true

end
