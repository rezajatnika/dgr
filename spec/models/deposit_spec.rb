# == Schema Information
#
# Table name: deposits
#
#  id         :integer          not null, primary key
#  agent_id   :integer
#  product_id :integer
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Deposit, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
