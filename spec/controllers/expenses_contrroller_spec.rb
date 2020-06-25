# frozen_string_literal: true

RSpec.describe ExpensesController do #:nodoc:
  let(:user) { create(:user) }
  let(:category) { create(:category, kind: :expense) }
  let!(:expense) { create(:expense, user: user, category: category) }
  let(:json_body) { JSON.parse(subject.body) }

  describe 'GET#show' do
    context 'when all ok' do
      subject { get :show, params: { id: expense.id } }
      it 'return expense' do
        expect(json_body).to include('expense')
      end
    end

    context 'when all ok' do
      subject { get :index }
      it 'return expenses' do
        expect(json_body).to include('expenses')
      end
    end
  end
end
