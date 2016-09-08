class OrderItem < ActiveRecord::Base
  # Asso
  belongs_to :order
  belongs_to :product
end
