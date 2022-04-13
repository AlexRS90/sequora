class Shopper < ApplicationRecord
  has_many :orders
  has_many :merchants, through: :orders

  validates :name, presence: true
  validates :email, presence: true
  validates :cif, presence: true
end
