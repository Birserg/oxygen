# frozen_string_literal: true

class ExpenseSerializer #:nodoc:
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :amount, :comment
end
