class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  	@user = User.find(params[:id])
    @store = Store.all
  end

  def edit
  	@user = User.find(current_user.id)
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to user_path(@user)
  end

  private
  def user_params
  	params.require(:user).permit(:name, :intro, :image)
  end
end
