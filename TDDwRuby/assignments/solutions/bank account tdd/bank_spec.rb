require_relative 'bankAccount'

RSpec.describe BankAccount do
  describe 'behavior' do
    before do
      @bank = BankAccount.new
    end
    it 'Has a method for retrieving the checking account balance' do
      expect(@bank.checkingAccountBalance).to eq("Your Checking Account balance is: 5000")
    end
    it 'Has a method that retrieves the total account balance' do
      expect(@bank.displayTotalBalance).to eq(7875)
    end
    it 'Has a method that allows the user to withdraw cash' do
      savings = @bank.withdraw(500, "savings")
      checking = @bank.withdraw(500, "checking")

      expect(savings).to eq(2000)
      expect(checking).to eq(4500)
    end

    it 'Raises an error if a user tries to withdraw more money than they have in the account' do
      savings = @bank.withdraw(2501, "savings")
      checking = @bank.withdraw(5001, "checking")

      expect(savings).to eq("Sorry, your Savings Account balance is insufficient")
      expect(checking).to eq("Sorry, your Checking Account balance is insufficient")
    end
    it 'Raises an error when the user tries to print out how many bank accounts there are' do
      expect{@bank.account_counter}.to raise_error(NoMethodError)
    end
    it 'Raises an error when the user tries to set the interest rate' do
      expect{@bank.interest_rate(0.02)}.to raise_error(NoMethodError)
    end
  end

  describe 'attributes' do
    before do
      @bank = BankAccount.new
    end

    it 'Raises an error when the user tries to set any attribute' do
      expect{@bank.account_counter(5)}.to raise_error(NoMethodError)
      expect{@bank.account_number(123)}.to raise_error(ArgumentError)
      expect{@bank.checking_balance(2000000)}.to raise_error(ArgumentError)
      expect{@bank.savings_balance(2000000)}.to raise_error(ArgumentError)
      expect{@bank.interest_rate(0.02)}.to raise_error(NoMethodError)
    end
  end
end
