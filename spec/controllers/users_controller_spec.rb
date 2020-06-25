# frozen_string_literal: true

RSpec.describe UsersController do #:nodoc:
  let(:json_body) { JSON.parse(subject.body) }
  let(:params) do
    {
      last_name: 'Smith',
      first_name: 'Smith',
      patronymic: 'Smith',
      emal: 'smith@gmail.ru'
    }
  end

  describe 'POST#create' do
    context 'when all ok' do
      subject { post :create, params: params }
      it 'return expense' do
        expect(json_body).to include('user_id')
      end
    end
  end

  describe 'GET#index' do
    let!(:user) { create(:user) }

    context 'when all ok' do
      subject { get :index }
      it 'return expenses' do
        expect(json_body).to include('users')
      end
    end
  end
end
