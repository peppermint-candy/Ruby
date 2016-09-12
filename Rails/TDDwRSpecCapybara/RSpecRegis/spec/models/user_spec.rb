require 'rails_helper'

RSpec.describe User, type: :model do
  it "email should be in a valid format" do
    user = User.new(
   first_name: 'Roald',
   last_name: 'Dahl',
   email: 'roalddahl',
   password: 'thisismypassword'
   )
   expect(user).to be_invalid
  end

  it "email should be unique" do
    User.create(
     first_name: "Jane",
     last_name: "Doe",
     email: "janethebest@codingdojo.com"
    )
    user = User.new(
     first_name: "Jane",
     last_name: "Smith",
     email: "janethebest@codingdojo.com"
    )
    expect(user).to be_invalid
  end

  it "all fields must be required" do
    user = User.new(
      first_name: "",
      last_name: "",
      email: "",
      password:""
    )
    expect(user).to be_invalid
  end

  it "password field must be at least 6 characters long" do
    user = User.new(
    first_name: "Jane",
    last_name: "Smith",
    email: "janethebest@codingdojo.com",
    password: "12345"
     )
     expect(user).to be_invalid
  end
  
end
