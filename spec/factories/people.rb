FactoryBot.define do
  factory :person do
    name      { FFaker::Name.name }
    telephone { FFaker::PhoneNumber.phone_number }
    cnpj      { FFaker::IdentificationBR.cnpj }
    email     { FFaker::Internet.email }
    password  { FFaker::Internet.password }
  end

  factory :client, class: Client, parent: :person do
    client   { true }
  end

  factory :provider, class: Provider, parent: :person do
    client   { false }
    provider { true  }
  end
end
