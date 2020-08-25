class Provider < Person
  has_many :products, as: :person, dependent: :destroy
end
