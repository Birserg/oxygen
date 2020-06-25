# frozen_string_literal: true

RSpec.describe Category, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:kind) }
end
