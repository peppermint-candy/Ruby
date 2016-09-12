require_relative "wizninjasamurai"
RSpec.describe Wizard do
  before do
    @wiz = Wizard.new
  end

  it 'wizard has a default health of 50 and intelligence of 25' do
    @health = 50
    @intelligence = 25

    expect(@wiz.health).to eq(50)
    expect(@wiz.intelligence).to eq(25)
  end

  it 'wizard has a method that increase health by 10' do
    @health = 50
    expect(@wiz.heal).to eq(60)
  end

  it 'wizard has an ancestor chain that includes Human' do
    expect(@wiz.class.ancestors.include?(Human)).to be true
  end

  it 'wizard has a fireball method that attacks an object and reduces the objects health' do
    @health = 50
    @wiz.fireball(@wiz)
    expect(@wiz.health).to eq(30)
  end


end
