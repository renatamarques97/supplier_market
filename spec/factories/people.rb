FactoryBot.define do
  factory :person do
    name      { FFaker::Name.name                }
    telephone { FFaker::PhoneNumber.phone_number }
    cnpj      { FFaker::IdentificationBR.cnpj    }
    email     { FFaker::Internet.email           }
    password  { FFaker::Internet.password        }

    trait :not_actived do
      admin    { false }
      client   { false }
      provider { false }
    end
  end

  factory :client, class: Client, parent: :person do
    client   { true }
  end

  factory :provider, class: Provider, parent: :person do
    client   { false }
    provider { true  }
  end

  factory :adm, class: Adm, parent: :person do
    client { false }
    admin  { true  }
  end
end
