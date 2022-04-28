# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { from_user: nil, to_user: "ben", amount: 20000 },
  { from_user: nil, to_user: "brian", amount: 20000 },
  { from_user: "ben", to_user: "evan", amount: 9000 },
  { from_user: "brian", to_user: "anthony", amount: 7000 },
  { from_user: "evan", to_user: "anthony", amount: 400 },
  { from_user: "ben", to_user: "anthony", amount: 1500 },
  { from_user: "anthony", to_user: "ben", amount: 4500 },
  { from_user: "anthony", to_user: "evan", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

# balances
Ben_account = 0
Brian_account = 0
Evan_account = 0
Anthony_account = 0

for transaction in blockchain
if transaction[:from_user] == "ben"
  Ben_account = Ben_account - transaction[:amount]
elsif transaction[:from_user] == "brian"
Brian_account = Brian_account - transaction[:amount]
elsif transaction[:from_user] == "evan"
Evan_account = Evan_account - transaction[:amount]
elsif transaction[:from_user] == "anthony"
  Anthony_account = Anthony_account - transaction[:amount]
end

if transaction[:to_user] == "ben"
  Ben_account = Ben_account + transaction[:amount]
elsif transaction[:to_user] == "brian"
Brian_account = Brian_account + transaction[:amount]
elsif transaction[:to_user] == "evan"
Evan_account = Evan_account + transaction[:amount]
elsif transaction[:to_user] == "anthony"
  Anthony_account = Anthony_account + transaction[:amount]
end
end

puts "Ben's KelloggCoin balance is #{Ben_account}"
puts "Brian's KelloggCoin balance is #{Brian_account}"
puts "Evan's KelloggCoin balance is #{Evan_account}"
puts "Anthony's KelloggCoin balance is #{Anthony_account}"
