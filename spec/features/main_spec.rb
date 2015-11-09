require 'rails_helper'

describe 'root page' do
  it 'should have home page content' do
    visit '/'
    expect(page).to have_content 'Home page'
  end
end
