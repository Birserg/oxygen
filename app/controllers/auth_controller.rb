# frozen_string_literal: true

class AuthController < ApplicationController #:nodoc:
  skip_around_action :authenticate_user!

  def login
    render json: { success: true }
  end

  def sign_up
    render json: { success: true }
  end
end
