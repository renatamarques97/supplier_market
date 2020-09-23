class Purchase < ApplicationRecord
  belongs_to :person, polymorphic: true

  validates :price,       presence: true
  validates :discount,    presence: true
  validates :final_price, presence: true
  validates :shipping,    presence: true
  validates :person_id,   presence: true
  validates :person_type, presence: true

  has_many :purchase_products
  has_many :products, through: :purchase_products
end
