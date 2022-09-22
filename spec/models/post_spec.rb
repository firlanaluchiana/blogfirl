require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:each) do
  @user = User.new(
    name:"luchi"
    email: "luchi@gmail.com"
    password: "qwerty"
  )
  @user.save
  
  subject {
    described_class.new(title: "Anything",
                        body: "freee")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a body" do
    subject.body = nil
    expect(subject).to_not be_valid
  end
end
