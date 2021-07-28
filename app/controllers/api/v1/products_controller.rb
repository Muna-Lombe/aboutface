class Api::V1::ProductsController <  Api::V1::BaseController
  before_action :set_product, only: :show
  def index
      @products = Product.all

    # if params[:query].present?
    # # if params[:query].present?
    #   @products = Product.all.where()
    # else
    #   @products = Product.all

    # end
  end
  
  def show
    
  end

  def ingredients
    @ingredients = @product.ingredients
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end
end