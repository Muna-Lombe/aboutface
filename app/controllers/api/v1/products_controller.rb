class Api::V1::ProductsController <  Api::V1::BaseController
  before_action :set_product, only: :show
  def index

      @products = Product.all

      

    if params[:query].present?
    # if params[:query].present?
      @products = @products.search_by_name(params[:query])
    end

    render json: @products, each_serializer: ProductSerializer
  end
  
  def show
    render json: @product, serializer: ProductSerializer
  end

  def ingredients
    @ingredients = @product.ingredients
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end
end