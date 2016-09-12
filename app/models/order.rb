class Order < ActiveRecord::Base
  # Asso
  belongs_to :agent
  has_many :order_items, dependent: :destroy
  accepts_nested_attributes_for :order_items, reject_if: :all_blank

  # Validation
  validates :order_date, :shipment_date, :agent_id, presence: true

  def id_with_shipment_date
    "#{id} - #{shipment_date.strftime('%A, %e %B %Y')}"
  end
end
