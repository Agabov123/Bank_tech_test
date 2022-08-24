# Bank_tech_test

##Requirements

You should be able to interact with your code via a REPL like IRB or Node. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see

# date || credit || debit || balance
# 14/01/2023 || || 500.00 || 2500.00
# 13/01/2023 || 2000.00 || || 3000.00
# 10/01/2023 || 1000.00 || || 1000.00

## Clone this project and run bundle:
git clone https://github.com/Agabov123/Bank_tech_test.git

bundle 

## To run tests

rspec spec/account_spec.rb

## To run the project in irb

irb

require './lib/account.rb'

## Example commands

- account = Account.new
- account.deposit(1000);
- account.deposit(2000);
- account.withdraw(500);
- account.print_statement;
