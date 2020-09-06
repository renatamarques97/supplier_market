class Purchase < ApplicationRecord
  belongs_to :person, polymorphic: true

  validates :person_id, presence: true
  validates :person_type, presence: true
end
