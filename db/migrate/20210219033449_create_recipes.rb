class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :method
      t.text :ingredients
      t.string :image
      t.string :flavour

      t.timestamps
    end
  end
end
