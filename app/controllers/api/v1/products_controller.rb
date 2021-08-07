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

  def compare

    if params[:compare].present?
      spr = params[:compare]
      p1 = Product.search_by_name(spr["name"]).first
      p2 = Product.search_by_name(spr["compare_to"]).first

      p1_ings = Ingredient.search_by_name(p1.id)
      p2_ings = Ingredient.search_by_name(p2.id)
      
      crs = CompatibilityRule.all
      count = 1
      flagged_crs = []
      p1_ings.each do |p1_ing|
        p2_ings.each.with_index do|p2_ing, i|
          puts "1: id: #{p1_ing.id} #{p1_ing.name} 2: id: #{p2_ing.id}#{p2_ing.name}"
          p1_igr = IngredientGroup.search_by_name(p1_ing.name)&.first
          p2_igr = IngredientGroup.search_by_name(p2_ing.name)&.first
          # debugger
          # puts "index: #{i} - #{p1_ing.name}:#{p1_igr.name}, #{p1_ing.name}:#{p2_igr}"
          # cr = crs.where(["group_one_id = ? and group_two_id = ?", p1_igr.id, p2_igr.id]).first
          cr = crs.where(["group_one_id = ? and group_two_id = ?", p1_igr.id, p2_igr.id]).first.nil? ? crs.where(["group_one_id = ? and group_two_id = ?", p2_igr.id, p1_igr.id]).first : crs.where(["group_one_id = ? and group_two_id = ?", p1_igr.id, p2_igr.id]).first
          
          if flagged_crs.include?(cr)
            p ""
          elsif cr.nil?
            flagged_crs << {error: "ingredient group #{p1_igr.name} or #{p2_igr.name} not found in compatibility Rules"}
          else
            #cr = cr.first
            if cr.compatible == false
            flagged_crs << {gr1: cr.group_one.name, gr2: cr.group_two.name, compatible: cr.compatible, reason: cr.reason, rating: cr.rating}
            end
          end
          count +=1
        end
      end
      results = flagged_crs.length > 0 ? flagged_crs : [{title: "Products compatible", compatible: true}]
      render json: {p1: p1, p2: p2, compare_results: results}
    end
  end 


  def ingredients
    @ingredients = @product.ingredients
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def set_compare
      params.require(:compare).permit(:compare)
  end
end