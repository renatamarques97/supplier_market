class Product < ApplicationRecord
  belongs_to :person, polymorphic: true

  validates :name,        presence: true
  validates :description, presence: true
  validates :price,       presence: true
  validates :quantity,    presence: true
  validates :person_id,   presence: true
  validates :person_type, presence: true

  def dimensions
    return "" unless height || width || length
    "#{height} cm x #{width} cm x #{length} cm (CxLxA)"
  end
end
