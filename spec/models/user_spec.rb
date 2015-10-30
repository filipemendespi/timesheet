require 'rails_helper'

RSpec.describe User do
  subject {
    User.new(
      name: 'User1',
      email: 'user@example.com',
      password: 'pass_user1',
      role: 1
    )
  }

  it { should be_valid }
end
