
class BankAccount
    attr_accessor :account_number, :saving, :checking
    @number_account = 0

    class << self
      attr_accessor :number_account
    end

    def initialize
      acnum

      self.class.number_account += 1

      @checking = 300
      @saving = 10000
      @rate = 0.05

    end

    def checkingbal
      puts "Your have $#{@checking} in your checking account"
    end

    def savingbal
      puts "Your have $#{@saving} in your saving account"
    end

    def totalbal
      puts "Your total balance is $#{@checking + @saving}"
    end

    def depochecking(depoc)
      @checking += depoc
      puts "You have deposited $#{depoc} into your checking account"
    end

    def deposaving(depos)
      @saving += depos
      puts "You have deposited $#{depos} into your saving account"
    end

    def witchecking(witc)
      if witc > @checking
        puts "Sorry, you have insufficient fund in your checking account"
      else
        @checking -= witc
        puts "You have withdrawn $#{witc} from your checking account"
      end
    end

    def witsaving(wits)
      if wits > @saving
        puts "Sorry, you have insufficient fund in your checking account"
      else
        @saving -= wits
        puts "You have withdrawn $#{wits} from your saving account"
      end
    end

    def account_information
      puts "You interest rate is #{@rate} percents"
      puts "Your account number is #{@acnumber}"
      puts "Your checking account balance is $#{@checking + @saving}"
      puts "Bank total account is #{self.class.number_account}"
    end


    private
    attr_accessor :rate
    def acnum
      @acnumber = (10**6*rand).floor
    end
end

danny = BankAccount.new
# danny.checkingbal
# danny.totalbal
# danny.account_information

megan = BankAccount.new
megan.account_information
megan.depochecking(500)
megan.deposaving(700)
megan.totalbal
megan.witchecking(1000)
megan.witsaving(200)
megan.savingbal
