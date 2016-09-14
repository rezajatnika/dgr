class ShipmentsController < ApplicationController
  before_action :set_order_presenter

  # GET /shipments
  def index
  end

  # GET /shipments/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # PUT /shipments/1/approve
  def approve
    @order = Order.find(params[:id])
    @order.update_attribute(:status, 'approved')
    redirect_to shipments_path, success: 'Rencana pengiriman berhasil dibuat.'
  end

  private

  def set_order_presenter
    @presenter = OrderPresenter.new
  end
end
