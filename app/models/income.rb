# frozen_string_literal: true

class Income < ApplicationRecord #:nodoc:
  belongs_to :category
  belongs_to :user

  validates :amount, :name, :category, presence: true
end
