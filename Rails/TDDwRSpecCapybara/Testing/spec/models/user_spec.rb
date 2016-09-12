require 'rails_helper'

RSpec.describe User, type: :model do
  it "should not save if email already exists" do
    User.create(
    first_name: "Jane",
    last_name: "Doe",
    email: "janethebest@codingdojo.com"
    )

    user = User.new(
    first_name: "Jane",
    last_name: "Doe",
    email: "janethebest@codingdojo.com"
    )

    expect(user).to be_invalid
  end

  it "should not save if first_name field is black" do
    user = User.new(first_name: "")

    expect(user).to be_invalid
  end

  it "should contain a valid email" do
    user = User.new(
    first_name: "Ronald",
    last_name: "Dahl",
    email: "ronalddahl"
    )

    expect(user).to be_invalid
  end
  
end
