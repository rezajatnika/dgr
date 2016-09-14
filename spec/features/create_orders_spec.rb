require 'rails_helper'

RSpec.feature 'Create orders', type: :feature do
  before :each do
    @agent = FactoryGirl.create(:agent)
    @product = FactoryGirl.create(:product)
    @user = FactoryGirl.create(:user)
  end

  after :each do
    [User, Product, Agent].each { |res| res.destroy_all }
  end

  scenario 'creates new order with valid data' do
    # Log in the user
    login_as(@user)

    # Informasi Order
    visit '/orders/new'
    fill_in 'Tanggal Order', with: 1
    fill_in 'Tanggal Pengiriman', with: 1
    select @agent.name_with_id, from: 'Nama Agen'

    # Sales Order
    click_link 'Tambah Barang'
    first('#order-items .nested-fields:last-child select').select(@product.name)
    fill_in 'Order Kuantitas', with: 10
    click_button 'Simpan'
    expect(page).to have_content 'Sales order berhasil dibuat.'
  end

  scenario 'creates new order with invalid data' do
    # Log in the user
    login_as(@user)

    # Informasi Order
    visit '/orders/new'
    fill_in 'Tanggal Order', with: 1
    fill_in 'Tanggal Pengiriman', with: 1

    expect(page).to have_content 'Form Sales Order'
  end
end
