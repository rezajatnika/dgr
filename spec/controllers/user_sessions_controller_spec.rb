require 'rails_helper'

RSpec.describe UserSessionsController, type: :controller do
  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end

    it 'renders the :new template' do
      get :new
      expect(response).to render_template(:new)
    end
  end
end
