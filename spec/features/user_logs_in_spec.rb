require 'rails_helper'

RSpec.describe 'User logs in', type: :feature do
  before :each do
    FactoryGirl.create(:user)
  end

  scenario 'logs user in with correct email and password' do
    visit '/user_session/new'
    fill_in 'Email', with: 'mukidi@dgr.com'
    fill_in 'Password', with: 'asdqwe123'
    click_button 'Log In'
    expect(page).to have_content 'Dashboard'
  end

  scenario 'logs user in with incorrect email and password' do
    visit '/user_session/new'
    fill_in 'Email', with: 'stock@dgr.com'
    fill_in 'Password', with: 'false'
    click_button 'Log In'
    expect(page).to have_content 'Invalid email or password.'
  end
end
