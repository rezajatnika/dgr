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

FactoryGirl.define do
  factory :order do
    before(:create) do |ord|
      ord.order_items << FactoryGirl.build(:order_item, order: ord)
    end

    shipment_date Date.today
    order_date Date.today
    agent
  end
end
