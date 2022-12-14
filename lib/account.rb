class Account

  def initialize 
    @balance = 0
    @statement = [] 
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
