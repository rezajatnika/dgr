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

FactoryGirl.define do
  factory :shipment do
    # TBD
  end
end
