class AddColumnToProductIngredient < ActiveRecord::Migration[6.1]
  def change
    add_column :product_ingredients, :rank, :integer
  end
end
