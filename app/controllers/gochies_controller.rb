class GochiesController < ApplicationController
  def new
  	@store = Store.find(params[:store_id])
  	@staffs = @store.staffs
  	@gochisous = Gochisou.new
  end

  def create
  	store = Store.find(params[:store_id])
    gochisou = Gochisou.new(gochisou_params)
    gochisou.user_id = current_user.id
    gochisou.store_id = store.id
    # binding.pry
    gochisou.save
    redirect_to complete_store_gochies_path
  end

  def index
    @gochisous = Gochisou.all
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
