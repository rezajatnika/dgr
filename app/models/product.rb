class Product < ActiveRecord::Base
  after_create :build_inventory

  # Asso
  has_one :inventory, dependent: :destroy
  has_many :order_items

  # Validations
  validates :name,
    :code,
    :unit,
    :price,
    presence: true
end
