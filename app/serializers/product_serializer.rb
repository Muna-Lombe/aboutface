class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :photo_url

  has_many :product_ingredients #, each_serializer: ProductIngredientSerializer

  def photo_url
    if object.photo.attached?
      object.photo.service_url(params: {'x-oss-process'=> 'style/med'})
    else
      ""
    end
  end

end
