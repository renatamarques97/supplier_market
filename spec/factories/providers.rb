FactoryBot.define do
  factory :provider do
    name { FFaker::Name.name }
    telephone { FFaker::PhoneNumber.phone_number }
    cnpj { FFaker::IdentificationBR.cnpj }
    email { FFaker::Internet.email }
    password { FFaker::Internet.password }
    provider { true }
    client { false }
  end
end
