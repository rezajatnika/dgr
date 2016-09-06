class HomeController < ApplicationController
  before_action :require_login

  # GET /home/index
  def index; end
end
