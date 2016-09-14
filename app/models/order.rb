class Order < ActiveRecord::Base
  # Scopes
  scope :placed, -> { where(status: 'placed') }
  scope :approved, -> { where(status: 'approved') }

  # Enumeration
  enum status: { placed: 0, approved: 1, rejected: 2, finished: 3 }

  # Association
  belongs_to :agent
  has_many :order_items, dependent: :destroy
  accepts_nested_attributes_for :order_items, allow_destroy: true,
    reject_if: :all_blank

  # Validation
  validates :status, :order_date, :shipment_date, :agent_id, presence: true
  validate :require_one_order_item

  def id_with_shipment_date
    "#{id} - #{shipment_date.strftime('%A, %e %B %Y')}"
  end

  private

  def require_one_order_item
    errors.add(:base, 'Minimal terdapat 1 barang.') if order_items.size < 1
  end
end
