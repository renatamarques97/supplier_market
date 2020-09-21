FactoryBot.define do
  factory :product do
    name        { FFaker::Product.product }
    description { FFaker::Product.model }
    height      { FFaker::Random.rand(10..80) }
    width       { FFaker::Random.rand(10..80) }
    length      { FFaker::Random.rand(10..80) }
    weight      { FFaker::Random.rand(1.0..8.0).round(2) }
    price       { FFaker::Random.rand(1.0..8.0).round(2) }
    quantity    { FFaker::Random.rand(20..80) }
    person_type { "Person" }
    person
  end
end
