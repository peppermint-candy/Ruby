require_relative 'bank_account'
RSpec.describe BankAccount do

  describe 'behavior' do
    before do
      @bank1 = BankAccount.new
    end

    it "it can retrieve the checking account balance" do
      expect(@bank1.checkingbal).to eq("You have $300 in your checking account")
    end

    it "can retrieve the saving account balance" do
      expect(@bank1.savingbal).to eq("You have $10000 in your saving account")
    end

    it "can retrieve the total account balance" do
      expect(@bank1.totalbal).to eq("Your total balance is $10300")
    end

    it "has a method that allows the user to withdraw cash" do
      @checking = 300
      @saving = 10000

      expect(@bank1.witsaving(100)).to eq("You have withdrawn $100 from your saving account")
      expect(@bank1.witchecking(100)).to eq("You have withdrawn $100 from your checking account")
    end

    it "raises an error if users try to withdraw more money than they have in the account" do
      @checking = 300
      @saving = 10000

      expect(@bank1.witchecking(301)).to eq("Sorry, you have insufficient fund in your checking account")
      expect(@bank1.witsaving(10001)).to eq("Sorry, you have insufficient fund in your saving account")

    end

    it 'raises an error when users try to print out how many bank accounts there are' do
      expect{@bank1.number_account}.to raise_error(NoMethodError)
    end
    it 'raises an error when users try to set the interest rate' do
      expect{@bank1.rate(0.02)}.to raise_error(NoMethodError)
    end


    describe 'attribute' do
      it "raises errors when users try to set any attributes" do
        expect{@bank1.checking(1000000)}.to raise_error(ArgumentError)
        expect{@bank1.saving(1000000)}.to raise_error(ArgumentError)
        expect{@bank1.account_number(123456)}.to raise_error(ArgumentError)
        expect{@bank1.number_account(10)}.to raise_error(NoMethodError)
      end


    end
  end
end
