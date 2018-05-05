class ThanksController < ApplicationController
  def new
  	 @user = User.find(params[:id])
      @store = Store.find(params[:id])
      @gochisou = Gochisou.new
  end

  def create
     gochisou = Gochisou.find(params[:gochisou_id])
     thank = current_store.thanks.new(gochisou_id: gochisou.id)
     thank.save
     redirect_to complete_store_thanks
   end

  def complete
  	@store = current_store
  end
end
