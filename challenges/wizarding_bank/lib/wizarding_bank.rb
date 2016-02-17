require 'pry'

class Person

  attr_accessor :accounts, :cash

  def initialize(name, galleons)
    @name = name
    @galleons = galleons
    @accounts = []
    @cash = 1000
    # also need to track balances at each bank
    @credits = []
    p "#{@name} has been created with #{@galleons} galleons in cash."
  end

  def credits
    @credits
  end

  def name
    @name
  end

  def galleons
    @galleons
  end

    def balance_check(source)
      # "delegator" -- we ask person for a thing and they
      # simply delegate the work to another object (in this case a Bank or a Credit)
      # if its a bank, tell bank balance
      # or if its a cc tell your available credit
    end

    def pay(amount, source) # source could be: a bank? ("Bank of America") or a credit company? ("AMEX")
      # do we start here by filling in part of the branch
      # or do we start by building out the other "dependency"
      # then come back and patch them together
      # goes either to bank.withdrawal
      # or credit.cc_spend
    end

end

class Bank

  attr_accessor :list_of_accounts

  def initialize(name)
    @name = name
    @list_of_accounts = Hash.new

    p "#{@name} has been created."
  end

  def name
    @name
  end

  def open_account(person)
    p "An account has been opened for #{person.name} with #{self.name}"
    person.accounts << self.name
    # each person gets their own account
    # and later we need to be able to look up the specific account
    # that matches that person
    @list_of_accounts[person] = 0 # creating a new account for the person and setting opening amount to 0
  end

  def deposit(person, amount)
    if person.cash >= amount
      @list_of_accounts[person] += amount
      person.cash -= amount
      p "#{amount} galleons have been deposited into #{person.name}'s #{self.name} account. Balance: #{@list_of_accounts[person]} Cash: #{person.cash}"
    else
      p "#{person.name} does not have enough cash to perform this deposit."
    end
  end

  def withdrawal(person, amount)
    if person.cash >= amount
      @list_of_accounts[person] -= amount
      person.cash += amount
      p "#{person.name} has withdrawn #{amount} galleons. Balance: #{@list_of_accounts[person]} Cash: #{person.cash}"
    else
      p "#{person.name} does not have enough cash to perform this deposit."
    end
  end

  def transfer(person, target_bank, amount)
    if person.accounts.include?(target_bank.name)
      @list_of_accounts[person] -= amount
      target_bank.list_of_accounts[person] += amount
      p "#{person.name} has transferred #{amount} galleons. Originating (#{self.name}) Balance: #{@list_of_accounts[person]} Transferee (#{target_bank.name}) Balance: #{target_bank.list_of_accounts[person]}"
    else
      "#{person.name} does not have an account at #{target_bank}"
    end
  end

  def balance_sheet
    p "Total Cash: #{@list_of_accounts.values.reduce(:+)}"
  end

end

person1 = Person.new("Minerva", 1000)
chase = Bank.new("JP Morgan Chase")
boa = Bank.new("Bank of America")

chase.open_account(person1)
chase.deposit(person1, 750)
chase.deposit(person1, 5000)
chase.withdrawal(person1, 250)
chase.withdrawal(person1, 25000)
chase.transfer(person1, boa, 250)
boa.open_account(person1)
chase.transfer(person1, boa, 99)
chase.balance_sheet
boa.balance_sheet

person2 = Person.new("Mars", 2140)
chase.open_account(person2)
chase.deposit(person2, 750)
chase.balance_sheet

p person1.galleons
