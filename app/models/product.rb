class Product < ApplicationRecord
  belongs_to :person, polymorphic: true

  validates :person_id, presence: true
  validates :person_type, presence: true

  def dimensions
    "#{height} cm x#{width} cm x#{length} cm (CxLxA)"
  end
end
