FactoryBot.define do
  factory :user do
    name { 'Temmy' }
    email { 'Temmy@gmail.com' }
    password { '123456' }
    password_confirmation { '123456' }

    trait :confirmed do
      confirmed_at { Time.now }
      confirmed_sent_at { Time.now }
      confirmed_token { '123456' }
    end
  end
end
