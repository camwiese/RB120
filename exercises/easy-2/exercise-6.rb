class Wallet
  include Comparable

  def initialize(amount)
    @amount = amount
  end

  def <=>(other_wallet)
    amount <=> other_wallet.amount
  end

  protected

  attr_reader :amount

end

bill = Wallet.new(500)
penny = Wallet.new(465)

if bill > penny
  puts 'Bill has more money than Penny'
elsif bill < penny
  puts 'Penny has more money than Bill'
else
  puts 'Bill and Penny have the same amount of money.'
end