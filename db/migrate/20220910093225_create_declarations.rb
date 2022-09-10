class CreateDeclarations < ActiveRecord::Migration[6.1]
  def change
    create_table :declarations do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :solo, default: true

      t.timestamps
    end
  end
end
