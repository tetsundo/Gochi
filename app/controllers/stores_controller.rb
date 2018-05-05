class StoresController < ApplicationController
  def edit
  	@store = Store.find(params[:id])
  end

  def update
  	@store = Store.find(params[:id])
  	@store.update(store_params)
    redirect_to store_path(@store.id)
  end

  def show
  	if @store == current_store
  	@store = current_store
    @staffs = current_store.staffs.all.order(created_at: 'desc')
    @gochisoues = @store.gochisoues.all
    else
    @store = Store.find(params[:id])
    @staffs = @store.staffs.all.order(created_at: 'desc')
    end
    @staff = Staff.new
  end

  def index
  	@stores = Store.all
  end

  private

	def store_params
	    params.require(:store).permit(:name, :image, :intro, :email)
	end
end
