require 'Account'

describe Account do 
    it "allows deposit to be made" do 
        account = Account.new 
        account.deposit(1000)
        expect(account.statement).to eq([{ :date=>"23 / 08 / 22", credit: 1000, debit: "", balance: 1000 }]);
    end
    it "allows withdraw to be made" do 
        account = Account.new
        account.deposit(1000)
        account.withdraw(500)
        expect(account.statement).to eq([ {:date=>"23 / 08 / 22", credit: 1000, debit: "", balance: 1000 }, { :date=>"23 / 08 / 22", credit: "", debit: 500, balance: 500 }]);
    end 
    it "prints statement with latest transaction at the top" do 
        account = Account.new
        account.deposit(1000)
        account.deposit(2000)
        account.withdraw(500)
        expect(account.statement[-1]).to eq ({ :date=>"23 / 08 / 22", credit: "", debit: 500, balance: 2500 })
    end
end