# frozen_string_literal: true

class IncomeSerializer #:nodoc:
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :amount, :comment, :date
end
