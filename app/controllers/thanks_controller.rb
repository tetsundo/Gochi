class ThanksController < ApplicationController
  def new
    @thank = Thank.new
    @store = Store.find(params[:store_id])
    @gochi = Gochisou.find(params[:gochy_id])
    @user = @gochi.user
  end

  def create
    @store = Store.find(params[:store_id])
    @gochi = Gochisou.find(params[:gochy_id])
    @staff = @gochi.staff
    @user = @gochi.user
    thank = Thank.new(thank_params)
    thank.user_id = @user.id
    thank.store_id = @store.id
    thank.staff_id = @staff.id
    thank.gochi_id = @gochi.id
    # binding.pry
    thank.save
    redirect_to complete_store_gochy_thanks_path(params[:store_id])
  end

  def complete
  	@store = current_store
  end

  private
  def thank_params
  	params.require(:thank).permit(:opinion)
  end
end
