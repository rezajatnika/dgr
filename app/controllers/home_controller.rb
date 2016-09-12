class HomeController < ApplicationController
  # GET /home/index
  def index
    @user = current_user
  end
end
