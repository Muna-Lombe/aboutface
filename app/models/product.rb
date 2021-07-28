class Product < ApplicationRecord
  # DO NOT DESTROY ANYTHING!!!!!
  has_many :routine_products, dependent: :destroy
  has_many :product_ingredients, dependent: :destroy
  has_many :ingredients, through: :product_ingredients
  has_many :ingredient_groups, through: :ingredients
  # /to check which routines a product is associateed with
  # has_many :routines, through: :routine_products

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [:name, :brand],
    associated_against: {
      ingredients: [:name],
      ingredient_groups: [:name ]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
