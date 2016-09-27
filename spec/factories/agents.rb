# == Schema Information
#
# Table name: agents
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  phone      :string
#  pic        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :agent do
    name 'Agent Mukidi'
    address 'Jln. Raya Mukidi No. 101 Dalmation'
    phone '+62856123456'
    pic 'Mister Mukidi'
  end
end
