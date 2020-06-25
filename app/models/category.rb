# frozen_string_literal: true

class Category < ApplicationRecord #:nodoc:
  has_many :expenses, -> { where(kind: :expense) }, dependent: :restrict_with_exception
  has_many :incomes, -> { where(kind: :income) }, dependent: :restrict_with_exception

  enum kind: {
    expense: :expense,
    income: :income
  }

  validates :name, :kind, presence: true
end
