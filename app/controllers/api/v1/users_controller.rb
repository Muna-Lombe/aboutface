class Api::V1::UsersController <  Api::V1::BaseController
  before_action :set_user, only: :show
  def show
    
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end