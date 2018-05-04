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
  	@store = Store.find(params[:id])
  end

  def index
  	@stores = Store.all
  end

  private

	def store_params
	    params.require(:store).permit(:name, :image, :intro, :email)
	end
end
