require 'rails_helper'

RSpec.describe User, :type => :model do
  before do
    @user = User.new
  end

  it 'requires a first name' do
    @user.first_name = ''
    @user.valid?

    expect(@user.errors[:first_name].any?).to eq(true)
  end

  it 'requires a last name' do
    @user.last_name = ''
    @user.valid?

    expect(@user.errors[:last_name].any?).to eq(true)
  end

  it 'requires a password' do
    @user.password = ''
    @user.valid?

    expect(@user.errors[:password].any?).to eq(true)
  end

  it 'accepts properly forametted email address' do
    @user.email = "kobe@lakers.com"
    @user.valid?

    expect(@user.errors[:email].any?).to eq(false)
  end

  it 'rejects properly unproperly formatted email address' do
    @user.email = "invalid_email"
    @user.valid?

    expect(@user.errors[:email].any?).to eq(true)
  end
end
