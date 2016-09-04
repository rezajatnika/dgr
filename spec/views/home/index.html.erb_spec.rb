require 'rails_helper'

RSpec.describe 'home/index.html.erb', type: :view do
  it 'should show Hello, world!' do
    render
    expect(rendered).to include('Hello, world!')
  end
end
