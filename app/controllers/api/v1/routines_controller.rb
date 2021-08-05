class Api::V1::RoutinesController <  Api::V1::BaseController
  before_action :set_routine, only: [:show, :update, :destroy]
  # before_action :set_routine_product, only: [:destroy_routine_product]

  def index
      @routines = current_user.routines
      render json: @routines, each_serializer: RoutineSerializer

  end
  
  def create
    @new_routine = Routine.new(routine_params)
    @new_routine.user = current_user

    if @new_routine.save
      render json: @new_routine
    else
      render json: { status: 'fail'}, status: 400
    end

  end

  def add_routine_product

    @routine_product = RoutineProduct.new(routine_id: params[:routine_id],product_id: params[:product_id])
    if @routine_product.save
      render json: @routine_product
    else
      render json: { status: 'fail'}, status: 400
    end
  end

  def show
    render json: @routine
  end 
  
  def update
    @routine.update(routine_params)
    render json: @routine
  end

  def destroy
    if @routine.destroy
      render json: { status: 'routine deleted'}, status: 200
    else
      render json: { status: 'fail'}, status: 400
    end 
    
  end

  def destroy_routine_product
    @routine_product = RoutineProduct.find(params[:id])
    if @routine_product.destroy
      render json: { status: 'routine product deleted'}, status: 200
    else
      render json: { status: 'fail'}, status: 400
    end 
  end

  private

  def set_routine
    @routine = current_user.routines.find(params[:id])
  end

  def routine_params
    params.require(:routine).permit(:name)
  end
  
end