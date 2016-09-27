# == Schema Information
#
# Table name: order_items
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  product_id :integer
#  quantity   :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrderItem < ActiveRecord::Base
  # Asso
  belongs_to :order, inverse_of: :order_items
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
