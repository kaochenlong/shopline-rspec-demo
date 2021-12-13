require 'rails_helper'

RSpec.describe Project, type: :model do
  it "自己的專案不能同名" do
    user = User.create(email: 'eddie@5xcampus.com', password: '12345678')
    user.projects.create(name: 'Hello World')

    new_project = user.projects.build(name: 'Hello World')

    expect(new_project).not_to be_valid
  end

  it "不同人的專案可以同名" do
    user1 = User.create(email: 'eddie@5xcampus.com', password: '12345678')
    user2 = User.create(email: 'dev@5xcampus.com', password: '12345678')

    user1.projects.create(name: 'Hello World')
    new_project = user2.projects.build(name: 'Hello World')

    expect(new_project).to be_valid
  end

  it "can search project by keyword" do
    user = User.create(email: 'dev@5xcampus.com', password: '12345678')
    p1 = user.projects.create(name: 'hello')
    p2 = user.projects.create(name: 'world')
    p3 = user.projects.create(name: 'hey')

    expect(Project.search('he')).to include(p1, p3)
  end
end
