# frozen_string_literal: true

RSpec.describe Expense do #:nodoc:
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:amount) }
end
