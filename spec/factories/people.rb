FactoryBot.define do
  factory :person do
    name      { FFaker::Name.name }
    telephone { FFaker::PhoneNumber.phone_number }
    cnpj      { FFaker::IdentificationBR.cnpj }
    email     { FFaker::Internet.email }
    password  { FFaker::Internet.password }

    trait :client do
      client   { true }
      provider { false }
      # adm { false }
    end

    trait :provider do
      client   { false }
      provider { true }
      # adm { false }
    end

    # trait :adm do
    #   client { false }
    #   adm { true }
    #   provider { false }
    # end
  end
end
