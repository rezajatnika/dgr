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

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has valid factory' do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it 'is invalid without email' do
    expect(FactoryGirl.build(:user, email: nil)).to be_invalid
  end

  it 'is invalid without password' do
    expect(FactoryGirl.build(:user, password: nil)).to be_invalid
  end

  it 'is invalid without password confirmation' do
    expect(FactoryGirl.build(:user, password_confirmation: nil)).to be_invalid
  end

  it 'does not allow duplicate email addresses per user' do
    FactoryGirl.create(:user)
    expect(FactoryGirl.build(:user)).to be_invalid
  end
end
