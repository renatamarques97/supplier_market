FactoryBot.define do
  factory :purchase do
    price       { FFaker::Random.rand(100.0) }
    discount    { FFaker::Random.rand(100.0) }
    final_price { FFaker::Random.rand(100.0) }
    shipping    { FFaker::Random.rand(100.0) }
    person
  end
end
