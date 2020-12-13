# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is not valid without an email' do
    user = described_class.new(email: nil)
    expect(user).not_to be_valid
  end

  it 'is not valid without a password' do
    user = described_class.new(encrypted_password: nil)
    expect(user).not_to be_valid
  end

  it 'is not valid without a first name' do
    user = described_class.new(first_name: nil)
    expect(user).not_to be_valid
  end

  it 'is not valid without a last name' do
    user = described_class.new(last_name: nil)
    expect(user).not_to be_valid
  end
end
