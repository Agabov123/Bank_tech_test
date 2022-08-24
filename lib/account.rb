require 'date';

class Account

  def initialize 
    @balance = 0
    @statement = [] 
  end
  def getChoice
    choice = gets.chomp.to_i;
    return choice
  end  
  def menu
    puts "Select one of the options below: "
    puts "Enter 1 to deposit"
    puts "Enter 2 to withdraw"
    puts "Enter 3 to view account statement"
    puts "Enter 4 to exit"
    choice = getChoice();
    if choice == 1;
        getAmount();
        deposit(@amount);
        menu();
    elsif choice == 2;
        getAmount();
        withdraw(@amount);
        menu();
    elsif choice == 3;
        puts "Account statement: "
        print_statement();
        menu();
    elsif choice == 4;
        puts "Thank you"
        exit();
    else 
        puts "Invalit input "
        menu(); 
    end
  end 
  def getAmount
    puts "Enter the amount: "
    amount = gets.chomp
    checkInput(amount)
  end
  def checkInput(amount)
    if amount == amount.to_i.to_s
        @amount = amount.to_i
    else 
        return "Invalid input"
        getAmount();
    end
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
  def exit 
    exit!
  end 
end
