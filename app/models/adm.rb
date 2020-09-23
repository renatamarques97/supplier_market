

class Adm < Person

  has_many :products, as: :person, dependent: :destroy
end
