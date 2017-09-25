class BankAccount
#writter
  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawl(amount)
    @balance -= amount
  end

  def gaininterest
    @balance *= @interest_rate
  end

#reader
  def check_balance
    puts "Your account balance is $#{@balance}"
  end
 end



tfsa = BankAccount.new(1000, 1.0125)
tfsa.deposit(500)
tfsa.check_balance

mutual_funds = BankAccount.new(2500, 1.08)
mutual_funds.gaininterest
mutual_funds.check_balance
