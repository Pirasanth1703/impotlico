class Item < ApplicationRecord
  has_many :declaration_items
  has_many :declarations, through: :declaration_items
end
