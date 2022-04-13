class Order < ApplicationRecord
  belongs_to :merchant
  belongs_to :shopper
end
