class StaffsController < ApplicationController
  def new
  	@staff = Staff.new
  end

  def create
  	@staff = Staff.new(staff_params)
    @staff.store_id = current_store.id
  	@staff.save
  	redirect_to store_path(current_store.id)
  end

  def index
  	@staffs = Staff.all
  end

  def edit
  	@staff = Staff.find(params[:id])
  end

   def update
  	@staff = Staff.find(params[:id])
  	@staff.update(staff_params)
    redirect_to staffs_path(@store.id)
	end

	def destroy
	  	staff = Staff.find(params[:id])
	    staff.destroy
	    redirect_to store_path(current_store.id)
	end

	private
      def staff_params
        params.require(:staff).permit(:name, :introduction, :image)
      end
end
