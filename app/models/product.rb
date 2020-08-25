class Product < ApplicationRecord
  belongs_to :person, polymorphic: true
end
