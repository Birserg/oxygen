# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    patronymic { "MyString" }
    email { "MyString" }
  end
end
