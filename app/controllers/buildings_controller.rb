class BuildingsController < ApplicationController

  before_action :set_building, only: [:show, :edit, :update, :destroy]
	before_action :require_user, only: [:new, :edit, :destroy]

	def index
		@buildings = Building.all.order('name')
	end

	def new
		@building = Building.new
	end

	def edit
		@building = Building.find(params[:id])		
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

  def update
    respond_to do |format|
      if @building.update(building_params)
        format.html { redirect_to buildings_path, notice: 'Building was successfully updated.' }
        format.json { render :show, status: :ok, location: @building }
      else
        format.html { render :edit }
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
