class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :taxe_label
      t.string :category

      t.timestamps
    end
  end
end
