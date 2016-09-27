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

FactoryGirl.define do
  factory :deposit do
    # TBD
  end
end
