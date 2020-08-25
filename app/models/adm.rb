require "singleton"

class Adm < Person
  include Singleton

  has_many :products, as: :person, dependent: :destroy
end
