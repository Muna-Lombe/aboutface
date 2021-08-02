class Ingredient < ApplicationRecord
  belongs_to :ingredient_group
  has_many :product_ingredients, dependent: :destroy
  # /to check which products an ingredient is associateed with
  # has_many :products, through: :product_ingredients

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: :name,
    associated_against: {
      product_ingredients: [:product_id]
    },
    
    using: {
      trigram: {
        word_similarity: true
      }
    }
end
