# == Schema Information
#
# Table name: shipments
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  status     :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Shipment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
