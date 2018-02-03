# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::DashboardController do
  let(:admin) { FactoryBot.create(:admin) }

  before { allow(controller).to receive(:current_user) { admin } }

  describe '#index' do
    it 'is successful' do
      get :index
      expect(response).to be_successful
    end
  end
end
