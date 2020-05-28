class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
  end

  def show
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
      return
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :token)
    end
end
