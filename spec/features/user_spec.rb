require 'rails_helper'

describe User do
  it 'create' do
    visit '/users/new'

    fill_in 'Name', with: 'User Example'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'example123'

    select(1, :from => 'Role')

    click_on 'Create User'

    expect(page).to have_content 'User created with successful'
    expect(page).to have_content 'User Example'
    expect(page).to have_content 'user@example.com'
  end
end
