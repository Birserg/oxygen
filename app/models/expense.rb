# frozen_string_literal: true

class Expense < ApplicationRecord #:nodoc:
  belongs_to :category
  belongs_to :user

  validates :name, :amount, :category, presence: true
end
