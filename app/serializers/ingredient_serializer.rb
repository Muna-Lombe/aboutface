class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_one :ingredient_group
end
