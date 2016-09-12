require_relative 'apple_tree'

RSpec.describe AppleTree do
	describe 'attributes' do
		before do 
			@appleTree = AppleTree.new
			@appleTree.height = 6.5
			@appleTree.age = 27
		end

		it "is expected to have height, and age attributes" do 
			expect(@appleTree).to have_attributes(:height => 6.5)
			expect(@appleTree).to have_attributes(:age => 27)
		end
	end

	describe 'behavior' do
		before do
			@appleTree = AppleTree.new
		end
		it "should count how many apples are on it" do
			@appleTree.apples.push("Red Apple")
			expect(@appleTree.count_apples()).to eq(1)
		end

		it "should have a method called year_gone_by, which ages the tree by 1 year affecting its height" do 
			expect(@appleTree.year_gone_by()).to eq(1)
		end

		it "should not grow apples for the first three years of its life" do
			@appleTree.year_gone_by()
			@appleTree.year_gone_by()
			@appleTree.year_gone_by()
			@appleTree.grow_apples()
			expect(@appleTree.count_apples()).to eq(0)

			@appleTree.year_gone_by()
			@appleTree.grow_apples()
			expect(@appleTree.count_apples()).to eq(1)
		end

		it "should have a method called pick_apples that takes all of the apples off the tree" do 
			@appleTree.apples.push("Red Apple", "Green Apple")
			expect(@appleTree.count_apples()).to eq(2)

			@appleTree.pick_apples()
			expect(@appleTree.count_apples()).to eq(0)
		end

		it "should decay and not grow apples after 10 years" do
			@appleTree.year_gone_by()
			@appleTree.year_gone_by()
			@appleTree.year_gone_by()
			@appleTree.year_gone_by()
			@appleTree.grow_apples()
			expect(@appleTree.count_apples()).to eq(1)

			@appleTree.year_gone_by()
			@appleTree.year_gone_by()
			@appleTree.year_gone_by()
			@appleTree.year_gone_by()
			@appleTree.year_gone_by()
			@appleTree.year_gone_by()
			@appleTree.year_gone_by()
			@appleTree.year_gone_by()
			@appleTree.grow_apples()
			expect(@appleTree.count_apples()).to eq(1)
		end
	end
end