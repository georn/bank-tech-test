require 'bankAccount'

describe BankAccount do

  subject(:bank_account) { described_class.new}

  describe '#initialize' do
    it "initializes with a balance of zero" do
      expect(bank_account.balance).to eq(0)
    end
  end
end
