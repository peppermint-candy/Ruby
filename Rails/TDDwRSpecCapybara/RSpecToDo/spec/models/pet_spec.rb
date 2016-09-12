require 'rails_helper'

RSpec.describe Pet, type: :model do
  it "should validate owner's name " do
    owner = Pet.new(owner_name: "")
    expect(owner).to be_invalid
  end

  it "should validate pet's name" do
    pet = Pet.new(pet_name: "")
    expect(pet).to be_invalid
  end

  it "should validate owner's age" do
    owner = Pet.new(owner_name: "Elliot", pet_name:"Ralph", pet_age:"6", owner_age:"")
    expect(owner).to be_invalid
  end

  it "should valide pet's age" do
    pet = Pet.new(owner_name: "Elliot", pet_name:"Ralph", pet_age:"", owner_age:"24")
    expect(pet).to be_invalid
  end
end
