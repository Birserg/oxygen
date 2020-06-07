# frozen_string_literal: true

FactoryBot.define do
  factory(:expense) do
    sequence(:name) { |s| "expense #{s}" }
    amount { rand(0..100) }
    date { Time.zone.now }
  end
end
