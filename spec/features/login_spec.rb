require 'rails_helper'

RSpec.describe 'Login feature', type: :feature do
  before :each do
    FactoryGirl.create(:user)
  end

  scenario 'logs user in with correct email and password' do
    visit '/user_sessions/new'
    fill_in 'Email', with: 'stock@dgr.com'
    fill_in 'Password', with: 'asdqwe123'
    click_button 'Login'
    expect(page).to have_content 'Hello, world!'
  end

  scenario 'logs user in with incorrect email and password' do
    visit '/user_sessions/new'
    fill_in 'Email', with: 'stock@dgr.com'
    fill_in 'Password', with: 'false'
    click_button 'Login'
    expect(page).to have_content 'Please Login'
  end
end
