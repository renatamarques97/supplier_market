FactoryBot.define do
  factory :product do
    name        { FFaker::Product.product }
    description { FFaker::Lorem.sentences(5) }
    dimensions  { "" }
    weight      { FFaker::Random.rand(4.0) }
    quantity    { FFaker::Random.rand(4) }
    person_type { "Person" }
    # person_id { create(:provider).id }
    # association :person
  end
end
