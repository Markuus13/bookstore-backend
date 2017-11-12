FactoryBot.define do
  factory :user do
    email { Faker::Internet.free_email }
    password_digest { Faker::Internet.password }
    admin false
  end
end
