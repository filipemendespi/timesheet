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

  context 'to be invalid' do
    it 'if user not be an email' do
      subject.email = nil
      expect(subject).to be_invalid
    end

    it 'if user not be a password' do
      subject.password = nil
      expect(subject).to be_invalid
    end

    it 'if user not be a name' do
      subject.name = nil
      expect(subject).to be_invalid
    end

    it 'if user not be a role' do
      subject.role = nil
      expect(subject).to be_invalid
    end
  end
end
