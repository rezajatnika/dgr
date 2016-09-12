class ShipmentsController < ApplicationController
  # GET /shipments
  def index
    @presenter = OrderPresenter.new
  end
end
