class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand

  has_many :product_ingredients #, each_serializer: ProductIngredientSerializer
end
