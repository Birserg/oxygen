# frozen_string_literal: true

class UserSerializer #:nodoc:
  include FastJsonapi::ObjectSerializer

  attributes :id, :first_name, :last_name, :patronymic, :email
end
