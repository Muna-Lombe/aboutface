class Ingredient < ApplicationRecord
  belongs_to :ingredient_group
  has_many :product_ingredients, dependent: :destroy
  # /to check which products an ingredient is associateed with
  # has_many :products, through: :product_ingredients
end
