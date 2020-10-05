# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

provider = Person.last

20.times do
  Product.create(
    name: FFaker::Product.product,
    description: FFaker::Product.model,
    height: FFaker::Random.rand(10..80),
    width: FFaker::Random.rand(10..80),
    length: FFaker::Random.rand(10..80),
    price: FFaker::Random.rand(10.0..80.0),
    weight: FFaker::Random.rand(1.0..8.0).round(2),
    quantity: FFaker::Random.rand(20..80),
    person_type: "Provider",
    person: provider
  )
end
