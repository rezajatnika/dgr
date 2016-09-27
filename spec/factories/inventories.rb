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

FactoryGirl.define do
  factory :inventory do
    # TBD
  end
end
