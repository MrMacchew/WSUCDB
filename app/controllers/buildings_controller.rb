class BuildingsController < ApplicationController

	before_action :require_user, only: [:new, :edit, :destroy]

	def index
		@buildings = Building.all.order('name')
	end

	def new
		@building = Building.new
	end

	def create
		@building = Building.new(building_params)
		
    respond_to do |format|
      if @building.save
        format.html { redirect_to new_building_path, notice: 'Building was successfully created.' }
        format.json { render :show, status: :created, location: @building }
      else
        format.html { render :new }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
	end


	
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building
      @building = Building.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_params
      params.require(:building).permit(:name, :code, :occupancy)
	end
end
