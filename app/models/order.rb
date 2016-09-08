class Order < ActiveRecord::Base
  # Asso
  has_many :order_items
  accepts_nested_attributes_for :order_items, reject_if: :all_blank
end
