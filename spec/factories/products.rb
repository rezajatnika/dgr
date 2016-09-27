# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string
#  code       :string
#  unit       :string
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :product do |f|
    f.name 'Dodol Brownies 335 gram'
    f.code 'dbr335'
    f.unit 'Crt'
    f.price 50000
  end
end
