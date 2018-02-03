# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::SessionsController do
  let(:admin) { FactoryBot.create(:admin) }

  describe '#new' do
    it 'is successful' do
      get :new
      expect(response).to be_successful
    end
  end

  describe '#create' do
    context 'when authentication data is valid' do
      it 'sets a cookie' do
        post :create, params: { email: admin.email, password: 'secret' }
        expect(response.cookies['user_id']).to_not be_nil
      end

      it 'redirects to the admin dashboard' do
        post :create, params: { email: admin.email, password: 'secret' }
        expect(response).to redirect_to admin_root_path
      end
    end
  end
end
