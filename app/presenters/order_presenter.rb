class OrderPresenter
  def agents
    Agent.order(:id)
  end

  def orders
    Order.order(:id)
  end

  def order_select
    Order.placed.order(:shipment_date).collect do |ord|
      [ ord.id_with_shipment_date, ord.id ]
    end
  end

  def product_select
    Product.order(:name)
  end
end
