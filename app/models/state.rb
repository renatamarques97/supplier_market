class State < ApplicationRecord
    validates :name,    presence: true
    validates :acronym, presence: true

    has_many :city
end
