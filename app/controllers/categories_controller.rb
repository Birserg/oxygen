# frozen_string_literal: true

class CategoriesController < ApplicationController #:nodoc:
  before_action :load_resources, only: :index
  before_action :load_resource, only: :show

  def index
    render json: {
      categories: CategorySerializer.new(@categories).serializable_hash
    }
  end

  def show
    render json: {
      category: CategorySerializer.new(@category).serializable_hash
    }
  end

  private

  def load_resources
    @categories = Category.all
  end

  def load_resource
    @category = Category.find(params[:id])
  end
end
