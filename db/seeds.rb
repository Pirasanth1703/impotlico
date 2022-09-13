# require "faker"
require "open-uri"

puts "destroy all instances"

DeclarationItem.destroy_all
Declaration.destroy_all
User.destroy_all
Item.destroy_all

puts "creating users"

nassim = User.create!(
  email: "nassim@nassim.com",
  password: "azerty",
  first_name: "Nassim",
  last_name: "Brahimi"
)

pira = User.create!(
  email: "pirasanth@pirasanth.com",
  password: "azerty",
  first_name: "Pirasanth",
  last_name: "Subramaniam"
)

nicolas = User.create!(
  email: "nicolas@nicolas.com",
  password: "azerty",
  first_name: "Nicolas",
  last_name: "Nguon"
)

puts "Create declarations"

declaration_nicolas = Declaration.create!(
  solo: true,
  user: nicolas
)

declaration_pira = Declaration.create!(
  solo: false,
  user: pira
)

declaration_nassim = Declaration.create!(
  solo: false,
  user: nassim
)

puts "creating items"

freelance_item = Item.create!(
  title: "Auto-Entrepreneur",
  description: "Travailleur indépendant / autonome",
  taxe_label: "5TA",
  category: "Revenus"
)

assurance_item = Item.create!(
  title: "Assurance vie -8 ans",
  description: "Prestation lors de la survenance d'un événement incertain et aléatoire souvent appelé « risque »",
  taxe_label: "2EE",
  category: "Revenus"
)

assurance2_item = Item.create!(
  title: "Assurance vie +8 ans",
  description: "prestation lors de la survenance d'un événement incertain et aléatoire souvent appelé « risque »",
  taxe_label: "2DH",
  category: "Revenus"
)

charity_donation = Item.create!(
  title: "Don caritatif ",
  description: "Donation à des associations caritatives",
  taxe_label: "7UJ",
  category: "Depenses"
)

propertytax = Item.create!(
  title: "Taxe foncière ",
  description: "La taxe foncière est un impôt local dû tous les ans par le propriétaire ou l'usufruitier d'un bien immobilier.",
  taxe_label: "4BA",
  category: "Dettes"
)

puts "Creating declaration items"

DeclarationItem.create!(
  declaration: declaration_nicolas,
  item: assurance_item,
  amount: rand(2000...10000)
)

puts "Seed terminated"
