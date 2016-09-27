# == Schema Information
#
# Table name: orders
#
#  id            :integer          not null, primary key
#  agent_id      :integer
#  order_date    :date
#  shipment_date :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  status        :integer          default(0)
#

require 'rails_helper'

RSpec.describe Order, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
