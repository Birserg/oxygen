# frozen_string_literal: true

class User < ApplicationRecord #:nodoc:
  has_many :expenses
  has_many :incomes

  validates :first_name, :last_name, :email, presence: true
end
