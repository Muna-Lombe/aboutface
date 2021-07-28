class Api::V1::RoutinesController <  Api::V1::BaseController
  before_action :set_routine, only: [:show, :update, :destroy]
  before_action :set_user, only: [:index, :create]
  def index
      @routines = current_user.routines
      render json: @routines, each_serializer: RoutineSerializer

  end
  
  def create
    #current_user = @user
    @new_routine = Routine.new(routine_params)
    @new_routine.user = current_user

    if @new_routine.save
      render json: @new_routine
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

  private

  #def set_user
  #  @user = User.find(1)
  #end

  def set_routine
    #@user = set_user
    @routine = @user.routines.find(params[:id])
  end

  def routine_params
    params.require(:routine).permit(:name)
  end
end