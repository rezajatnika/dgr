# == Schema Information
#
# Table name: users
#
#  id                :integer          not null, primary key
#  name              :string
#  email             :string
#  crypted_password  :string
#  password_salt     :string
#  persistence_token :string
#  role              :integer
#  division_id       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryGirl.define do
  factory :user do |f|
    f.name 'Mukidi'
    f.email 'mukidi@dgr.com'
    f.password 'asdqwe123'
    f.password_confirmation 'asdqwe123'
    f.role 1
    association :division, factory: :sales
  end
end
