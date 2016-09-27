# == Schema Information
#
# Table name: divisions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :marketing, class: Division do |f|
    f.name 'Marketing'
  end

  factory :sales, class: Division do |f|
    f.name 'Sales'
  end
end
