require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'has valid factory' do
    expect(FactoryGirl.create(:product)).to be_valid
  end

  it 'is invalid without product name' do
    expect(FactoryGirl.build(:product, name: nil)).to be_invalid
  end

  it 'is invalid without product description' do
    expect(FactoryGirl.build(:product, description: nil)).to be_invalid
  end

  it 'is invalid without product code' do
    expect(FactoryGirl.build(:product, code: nil)).to be_invalid
  end

  it 'is invalid without product unit' do
    expect(FactoryGirl.build(:product, unit: nil)).to be_invalid
  end

  it 'is invalid without product price' do
    expect(FactoryGirl.build(:product, price: nil)).to be_invalid
  end
end
