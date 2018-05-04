class StoresController < ApplicationController
  def edit
  	@store = Store.find(params[:id])
  end

  def show
  	@store = Store.find(params[:id])
  end

  def index
  	@stores = Store.all
  end
end
