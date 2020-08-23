FactoryBot.define do
  factory :product do
    name { FFaker::Product.product }
    description { FFaker::Lorem.sentences(5) }
    dimensions { "" }
    weight { FFaker::Random.rand(4.0) }
    quantity { FFaker::Random.rand(4) }
    association :person, :provider
  end
end
