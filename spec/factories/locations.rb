# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  address    :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :location do
    # TBD
  end
end
