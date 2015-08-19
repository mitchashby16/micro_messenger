require 'rails_helper'

RSpec.describe User, type: :model do

  before(:all) do
    @user = User.new(name: "Mitch", email: "mashby@aol.com")
  end

  it 'can have a name' do
    expect(@user.name).to eq("Mitch")
  end

  it 'can have a email' do
    expect(@user.email).to eq("mashby@aol.com")
  end

  it 'cannot create a user without a name' do
    user = User.new(email: "mashby@aol.com")

    refute user.valid?
  end

  it 'cannot create a user without an email address' do
    user = User.new(name: "Mitch")

    refute user.valid?
  end

end
