class OrdersController < ApplicationController
  before_action :set_order_presenter

  # GET /orders
  def index; end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to root_path, success: 'Sales order berhasil dibuat.'
    else
      render :new
    end
  end

  # PATCH /orders/1
  def update
    @order = Order.find(params[:id])
    if params[:commit] == 'Approve'
      approve_order_for_shipment(@order)
    else
      update_order(@order)
    end
  end

  private

  def order_params
    params.require(:order).permit(
      :order_date,
      :shipment_date,
      :agent_id,
      order_items_attributes: [:id, :product_id, :quantity, :_destroy]
    )
  end

  def approve_order_for_shipment(order)
    if order.update(order_params)
      order.update_attribute(:status, 'approved')
      order.create_shipment
      redirect_to shipments_path, success: 'Rencana pengiriman berhasil dibuat'
    else
      render :edit
    end
  end

  def update_order(order)
    if order.update(order_params)
      flash[:success] = "Sales ##{order.id} telah berhasil diperbarui."
      redirect_to edit_order_path(order)
    else
      render :edit
    end
  end

  def set_order_presenter
    @presenter = OrderPresenter.new
  end
end
