class IncomingGoodsController < ApplicationController
  # GET /warehouse/incoming_goods/new
  def new
    @incoming_good = IncomingGood.new
  end

  def create
    render json: params
  end

  def scan
    @product = Product.find_by(code: params[:barcode])
    render json: @product
  end
end
