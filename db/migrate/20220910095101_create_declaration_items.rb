class CreateDeclarationItems < ActiveRecord::Migration[6.1]
  def change
    create_table :declaration_items do |t|
      t.references :declaration, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
