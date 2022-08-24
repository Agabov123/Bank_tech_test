require 'Account'

describe Account do 
    it "allows deposit to be made" do 
        account = Account.new
        account.deposit(1000)
        expect(account.print_statement).to eq([{:balance=>1000, :credit=>1000, :date=>"24 / 08 / 22", :debit=>""}]);
    end
    it "allows withdraw to be made" do 
        account = Account.new
        account.deposit(1000)
        account.withdraw(500)
        expect(account.print_statement).to eq([{:balance=>500, :credit=>"", :date=>"24 / 08 / 22", :debit=>500}, {:balance=>1000, :credit=>1000, :date=>"24 / 08 / 22", :debit=>""}]);
    end 
    it "prints statement wich has more than one transaction" do 
        account = Account.new
        account.deposit(1000)
        account.deposit(2000)
        account.withdraw(500)
        expect(account.print_statement).to eq ([{:balance=>2500, :credit=>"", :date=>"24 / 08 / 22", :debit=>500}, {:balance=>3000, :credit=>2000, :date=>"24 / 08 / 22", :debit=>""}, {:balance=>1000, :credit=>1000, :date=>"24 / 08 / 22", :debit=>""}])
    end
end