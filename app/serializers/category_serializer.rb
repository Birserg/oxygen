# frozen_string_literal: true

class CategorySerializer #:nodoc:
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :limit
end
