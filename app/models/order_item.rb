class OrderItem < ActiveRecord::Base
  # Asso
  belongs_to :order
  belongs_to :product

  # Validation
  validates :product_id, :quantity, presence: true

  def product_quantity
    persisted? ? product.inventory.quantity : 0
  end

  def agent_deposit_quantity(agent_id)
    persisted? ? product.deposits.where(agent_id: agent_id).first.quantity : 0
  end
end
