class GochiesController < ApplicationController
  def new
      @user = User.find(current_user.id)
      @store = Store.find
      @staffs = @store.staffs
      @gochi = Gochi.new
  end

  def create
      store = Store.find(params[:store_id])
    gochi = current_user.gochi.new(gochi_params)
    gochi.store_id = store.id
    gochi.save
    redirect_to complete_store_gochies
  end

  def index
  end

  def complete
      @user = User.find(current_user.id)
  end

  def show
  end

  private

  def gochi_params
      params.require(:gochi).permit(:opinion,:user_id,:staff_id)
  end
end
