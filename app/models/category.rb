# frozen_string_literal: true

class Category < ApplicationRecord #:nodoc:
  has_many :expenses, -> { where(type: :expense) }
  has_many :incomes, -> { where(type: :income) }

  enum kind: {
    expense: :expense,
    income: :income
  }

  validates :name, :kind, presence: true
end
