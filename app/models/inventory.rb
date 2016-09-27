# == Schema Information
#
# Table name: inventories
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  quantity    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#

class Inventory < ActiveRecord::Base
  # Asso
  belongs_to :product
  belongs_to :location
end
