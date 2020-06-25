# frozen_string_literal: true

class IncomesController < ApplicationController #:nodoc:
  before_action :load_resources, only: :index
  before_action :load_resource, only: :show

  def index
    render json: {
      incomes: IncomeSerializer.new(@incomes).serializable_hash
    }
  end

  def show
    render json: {
      income: IncomeSerializer.new(@income).serializable_hash
    }
  end

  private

  def load_resources
    @incomes = Income.all
  end

  def load_resource
    @income = Income.find(params[:id])
  end
end
