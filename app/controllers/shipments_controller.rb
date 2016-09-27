class ShipmentsController < ApplicationController
  before_action :set_order_presenter

  # GET /shipments
  def index; end

  # GET /shipments/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  private

  def set_order_presenter
    @presenter = OrderPresenter.new
  end

  def order_params
    params.require(:order).permit(
      :order_date,
      :shipment_date,
      :agent_id,
      order_items_attributes: [:id, :product_id, :quantity, :_destroy]
    )
  end
end
