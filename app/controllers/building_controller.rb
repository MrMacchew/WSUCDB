class BuildingController < ApplicationController
	


  def index
  	@buildings = Building.all.order('name') 
	end

	
  def new
    @building = Building.new
  end

  def show
		@building = Building.find(params[:id])
  end
end
