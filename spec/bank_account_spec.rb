require 'bank_account'

describe BankAccount do
  subject(:bank_account) { described_class.new }

  describe '#initialize' do
    it 'initializes with a balance of zero' do
      expect(bank_account.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it { should respond_to(:deposit).with(1).argument }

    it 'increments the balance value' do
      expect { bank_account.deposit(1) }.to change { bank_account.balance }.from(0).to(1)
    end
  end

  describe '#withdrawn' do
    it { should respond_to(:withdrawn).with(1).argument }

    it 'decrements the balance value' do
      expect { bank_account.withdrawn(1) }.to change { bank_account.balance }.from(0).to(-1)
    end
  end
end
