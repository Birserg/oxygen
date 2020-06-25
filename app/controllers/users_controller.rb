# frozen_string_literal: true

class UsersController < ApplicationController #:nodoc:
  before_action :load_resources, only: :index
  before_action :load_resource, only: :show

  def index
    render json: {
      users: UserSerializer.new(@users).serializable_hash
    }
  end

  def show
    render json: {
      user: UserSerializer.new(@user).serializable_hash
    }
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save!
      payload = { email: user.email }
      token = JWT.encode(payload, Rails.application.secrets[:secret_jwt_key])
      render json: {
        user_id: user.id, token: token
      }
    else
      render json: { errors: user.errors.full_message }
    end
  end

  private

  def user_params
    params.permit(:last_name, :first_name, :patronymic, :email, :password)
  end

  def load_resources
    @users = User.all
  end

  def load_resource
    @user = User.find(params[:id])
  end
end
