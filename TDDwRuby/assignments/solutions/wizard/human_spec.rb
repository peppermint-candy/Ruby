require_relative 'human'

RSpec.describe Human do
  describe 'initialization' do
    before do
      @human = Human.new
    end

    it 'has a default strength value of 3' do
      expect(@human.strength).to eq(3)
    end

    it 'has a default intelligence of 3' do
      expect(@human.intelligence).to eq(3)
    end

    it 'has a default stealth value of 3' do
      expect(@human.stealth).to eq(3)
    end

    it 'has a default health value of 100' do
      expect(@human.health).to eq(100)
    end
  end

  describe 'attributes' do
    before do
      @human = Human.new
    end

    it 'has a getter and setter for strength' do
      @human.strength = 0
      expect(@human.strength).to eq(0)
    end

    it 'has a getter and setter for intelligence' do
      @human.intelligence = 0
      expect(@human.intelligence).to eq(0)
    end

    it 'has a getter and setter for stealth' do
      @human.stealth = 0
      expect(@human.stealth).to eq(0)
    end

    it 'has a getter and setter for health' do
      @human.health = 0
      expect(@human.health).to eq(0)
    end
  end

  describe 'behavior' do
    before do
      @human1 = Human.new
      @human2 = Human.new
    end

    it 'attacks another object if the object inherits from Human' do
      nothuman = Array.new
      success1 = @human1.attack(@human2)
      expect(success1).to eq(true)

      success2 = @human1.attack(nothuman)
      expect(success2).to eq(false)
    end

    it "decreases the object's health by 10" do
      @human2.health = 10
      @human1.attack(@human2)
      expect(@human2.health).to eq(0)
    end
  end
end
