require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:redirect)
    end

    it 'renders the index template' do
      get :index
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
