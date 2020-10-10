class City < ApplicationRecord
    belongs_to :state
    has_many :address
    
    validates :name,    presence: true
end
