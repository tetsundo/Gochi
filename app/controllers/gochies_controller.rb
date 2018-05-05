class GochiesController < ApplicationController
  def new
  	@store = Store.find(params[:store_id])
  	@staffs = @store.staffs
  	@gochisou = Gochisou.new
  end

  def create
  	store = Store.find(params[:store_id])
    gochisou = current_user.gochisou.new(gochisou_params)
    gochisou.store_id = store.id
    gochisou.save
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

  def gochisou_params
  	params.require(:gochisou).permit(:opinion,:user_id,:staff_id)
  end
end
