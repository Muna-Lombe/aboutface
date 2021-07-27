class Product < ApplicationRecord
  # DO NOT DESTROY ANYTHING!!!!!
  has_many :routine_products, dependent: :destroy
  has_many :product_ingredients, dependent: :destroy
  has_many :ingredients, through: :product_ingredients
  has_many :ingredient_groups, through: :ingredients
  # /to check which routines a product is associateed with
  # has_many :routines, through: :routine_products
end
