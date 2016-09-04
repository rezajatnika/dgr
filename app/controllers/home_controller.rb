class HomeController < ApplicationController
  def index
  end

  def result
    render json: params
  end
end
