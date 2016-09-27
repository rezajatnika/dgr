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

require 'rails_helper'

RSpec.describe Inventory, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
