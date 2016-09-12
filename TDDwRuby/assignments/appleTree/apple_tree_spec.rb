require_relative 'apple_tree'

RSpec.describe "AppleTree" do

  before do
    @apple = AppleTree.new
    @apple.height = 8
    @apple.age = 5
  end

  it "has height and age" do
    expect(@apple.height).to eq(8)
    expect(@apple.age).to eq(5)
  end

  it "has a count method to tell you how many apples are on the tree" do
    expect(@apple.how_many_apples).to eq(0)
  end

  it "has a method call year_gone_by, which ages the tree by 1 year and affecting its height" do
    @apple.year_gone_by(2)

    expect(@apple.height).to eq(6)
    expect(@apple.age).to eq(7)
  end

  it "has a method that the apple tree should not grow any apples during the first 3 years of its life" do
    @youngapple = AppleTree.new
    @youngapple.age = 2
    @youngapple.year_gone_by(1)

    expect(@youngapple.how_many_apples).to eq(0)
  end

  it "has a method called pick apple that picks all the apples off the tree" do
    @apple.pick_apple
    expect(@apple.how_many_apples).to eq(0)
  end

  it "has a method that the apple tree should decay and not grow apple after 10 years" do
    @oldapple = AppleTree.new
    @oldapple.age = 10
    @oldapple.number_of_apples = 45
    @oldapple.year_gone_by(2)

    expect(@oldapple.how_many_apples).to eq(45)
  end


end
