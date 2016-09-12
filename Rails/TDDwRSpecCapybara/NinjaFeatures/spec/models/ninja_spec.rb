require 'rails_helper'

RSpec.describe Ninja, type: :model do
  it "requires that name and description are required" do
    ninja = Ninja.new(name:"", description:"")
    expect(ninja).to be_invalid
  end
end
