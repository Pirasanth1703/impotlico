# require "faker"
require "open-uri"

puts "destroy all instances"

DeclarationItem.destroy_all
Declaration.destroy_all
User.destroy_all
Item.destroy_all

puts "creating users..."

nassim = User.create!(
  email: "nassim@nassim.com",
  password: "azerty",
  first_name: "Nassim",
  last_name: "Brahimi"
)
puts "#{nassim.first_name} created"

pira = User.create!(
  email: "pirasanth@pirasanth.com",
  password: "azerty",
  first_name: "Pirasanth",
  last_name: "Subramaniam"
)
puts "#{pira.first_name} created"

nicolas = User.create!(
  email: "nicolas@nicolas.com",
  password: "azerty",
  first_name: "Nicolas",
  last_name: "Nguon"
)
puts "#{nicolas.first_name} created"

puts "Create declarations..."

Declaration.create!(
  solo: true,
  user: nicolas
)

Declaration.create!(
  solo: false,
  user: pira
)

Declaration.create!(
  solo: false,
  user: nassim
)

puts "created #{Declaration.all.count} declarations !!"

puts "creating items..."

Item.create!(
  title: "Freelance",
  description: "Benefices annuels",
  taxe_label: "5TA",
  category: "Revenus"
)

Item.create!(
  title: "Annualties",
  description: "Loyer annuel perçu",
  taxe_label: "2EE",
  category: "Revenus"
)

Item.create!(
  title: "Deductible expenses",
  description: "Charges déductibles",
  taxe_label: "2DH",
  category: "Debts"
)

Item.create!(
  title: "Crypto achetée",
  description: "Montant investi cryptomonaie",
  taxe_label: "7UJ",
  category: "Revenus"
)

Item.create!(
  title: "Crypto vendue",
  description: "Montant converti cryptomonaie",
  taxe_label: "4BA",
  category: "Revenus"
)

Item.create!(
  title: "Actions achetées",
  description: "Montant converti cryptomonaie",
  taxe_label: "4BA",
  category: "Revenus"
)

Item.create!(
  title: "Action vendues",
  description: "Montant converti cryptomonaie",
  taxe_label: "4BA",
  category: "Revenus"
)

puts "created #{Item.all.count} items"

# puts "Creating declaration items"

# DeclarationItem.create!(
#   declaration: declaration_nicolas,
#   item: assurance_item,
#   amount: rand(2000...10000)
# )

puts "Seed terminated"
