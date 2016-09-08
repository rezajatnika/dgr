class OrdersController < ApplicationController
  # GET /orders/new
  def new
    @order = Order.new
  end

  # POST /orders
  def create
    render json: params
  end
end
