# frozen_string_literal: true

class User < ApplicationRecord #:nodoc:
  has_many :expenses, dependent: :restrict_with_exception
  has_many :incomes, dependent: :restrict_with_exception

  validates :first_name, :last_name, :email, presence: true
end
