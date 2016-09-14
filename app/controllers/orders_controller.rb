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
    if @order.update(order_params)
      flash[:success] = "Sales ##{@order.id} telah berhasil diperbarui."
      redirect_to edit_order_path(@order)
    else
      render :edit
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

  def set_order_presenter
    @presenter = OrderPresenter.new
  end
end
