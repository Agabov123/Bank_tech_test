require 'date';

class Account

  def initialize #(dateClass) a.is_a? Numeric
    @balance = 0
    @statement = []
    #@date = Time.now.strftime('%d / %m / %y')  
  end

  def deposit(amount)
    date = Time.now.strftime('%d / %m / %y')
    @balance += amount
    transaction = { date: date, credit: amount, debit: "", balance: @balance }
    @statement << transaction
  end

  def withdraw(amount)
    date = Time.now.strftime('%d / %m / %y') 
    @balance -= amount
    transaction = { date: date, credit: "", debit: amount, balance: @balance }
    @statement << transaction
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @statement.reverse.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}"
    end
  end
end

account = Account.new
account.deposit(1000);
account.deposit(2000);
account.withdraw(500);
account.print_statement;