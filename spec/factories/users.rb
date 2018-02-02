# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password 'secret'
    password_digest 'secret'

    role 'editor'

    factory :admin do
      role 'admin'
    end
  end
end
