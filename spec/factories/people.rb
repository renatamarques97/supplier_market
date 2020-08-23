FactoryBot.define do
  factory :person do
    name { FFaker::Name.name }
    telephone { FFaker::PhoneNumber.phone_number }
    cnpj { FFaker::IdentificationBR.cnpj }
    email { FFaker::Internet.email }
    password { FFaker::Internet.password }

    trait :client do
      client { true }
    end

    trait :provider do
      provider { true }
      client { false }
    end

    trait :adm do
      client { false }
      adm { true }
    end

  end
end
