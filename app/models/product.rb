# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  unit       :string
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ActiveRecord::Base
  after_create :build_inventory

  # Asso
  has_one :inventory, dependent: :destroy
  has_many :order_items
  has_many :deposits

  # Validation
  validates :name, :code, :unit, :price, presence: true
end
