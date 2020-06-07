# frozen_string_literal: true

class ExpensesController < ApplicationController #:nodoc:
  before_action :load_resources, only: :index
  before_action :load_resource, only: :show

  def index
    render json: {
      expenses: ExpenseSerializer.new(@expenses).serializable_hash
    }
  end

  def show
    render json: {
      expense: ExpenseSerializer.new(@expense).serializable_hash
    }
  end

  private

  def load_resources
    @expenses = Expense.all
  end

  def load_resource
    @expense = Expense.find(params[:id])
  end
end
