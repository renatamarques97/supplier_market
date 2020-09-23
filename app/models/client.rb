class Client < Person
  has_many :purchases, as: :person
end
