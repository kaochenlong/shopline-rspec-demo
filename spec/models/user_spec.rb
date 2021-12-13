require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with email and password" do
    # 3A = Arrange, Act, Assert
    user = User.new(email: 'eddie@5xcampus.com', password: '12345678')
    expect(user).to be_valid
  end

  it "is invalid without email" do
    user = User.new(password: '12345678')
    expect(user).not_to be_valid
  end

  it "is not valid if password less than 6 chars" do
    user = User.new(email: 'eddie@5xcampus.com', password: '123')
    user.valid?
    expect(user.errors[:password].first).to include "too short"
  end

  it "is invalid if email is duplicated" do
    User.create(email: 'eddie@5xcampus.com', password: '12345678')
    new_user = User.new(email: 'eddie@5xcampus.com', password: '88888888')

    expect(new_user).not_to be_valid
  end

  it "can display username" do
    user = User.create(email: 'eddie@5xcampus.com', password: '12345678')
    expect(user.display_name).to eq 'eddie'
  end
end
