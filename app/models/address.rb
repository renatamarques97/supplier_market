class Address < ApplicationRecord
    belongs_to :person, polymorphic: true
    belongs_to :city

    validates :street,      presence: true
    validates :number,      presence: true
    validates :zip_code,    presence: true
end