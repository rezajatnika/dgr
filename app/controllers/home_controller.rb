class HomeController < ApplicationController
  before_action :require_login

  # GET /home/index
  def index
    @user = current_user
  end
end
