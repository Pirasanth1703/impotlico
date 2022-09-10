class Declaration < ApplicationRecord
  belongs_to :user

  has_many :declaration_items
  has_many :items, through: :declaration_items
end
