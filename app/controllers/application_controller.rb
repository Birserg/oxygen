# frozen_string_literal: true

class ApplicationController < ActionController::API #:nodoc:
  include ActionController::MimeResponds
  around_action :authenticate_user!

  def authenticate_user!
    return head :unauthorized, content_type: Mime[:json] if @current_user.nil?
    yield
  rescue JWT::DecodeError
    head :unauthorized, content_type: Mime[:json]
  ensure
    Thread.current[:current_user] = nil
  end

  def current_user
    return unless jwt_token
    @current_user ||= User.find_by!(email: jwt_payload.first['email'])
  end

  def jwt_token
    request.headers['Authorization'] || request.cookies['OX-Token']
  end

  def json_params
    @json_params ||= JSON.parse(request.raw_post)
                         .with_indifferent_access
  rescue JSON::ParserError
    render status: 422
  end

  def jwt_payload
    JWT.decode(jwt_token,
               Rails.application.credentials.secret_key_base,
               true, algorithm: 'HS256')
  end
end
