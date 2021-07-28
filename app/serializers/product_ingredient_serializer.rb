class ProductIngredientSerializer < ActiveModel::Serializer
  attributes :id, :ingredient_id, :rank, :ingredient #, :ingredient_name

  has_one :ingredient

  def ingredient_name
    object.ingredient.name
  end
end
