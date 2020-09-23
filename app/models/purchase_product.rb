class PurchaseProduct < ApplicationRecord
  validates :order_quantity, presence: true

  belongs_to :purchase
  belongs_to :product
end
