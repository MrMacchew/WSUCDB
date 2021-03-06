class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]

	before_action :require_user, only: [:new, :edit, :destroy]
  # GET /classrooms
  # GET /classrooms.json
  def index
    @search = Classroom.search(params[:q])
		@classrooms = @search.result.order('name')
		#@classrooms = Classroom.all.order('name')
  end

  # GET /classrooms/1
  # GET /classrooms/1.json
  def show
		@classroom = Classroom.find(params[:id])
		@pictures = @classroom.pictures
		@contact = @classroom.contact_id? ? Contact.find(@classroom.contact_id) : nil
		@tcontact = @classroom.tcontact_id? ? Tcontact.find(@classroom.tcontact_id) : nil
	end

  # GET /classrooms/new
  def new
    @classroom = Classroom.new
		@buildings = Building.all
  end

  # GET /classrooms/1/edit
  def edit
  end

  # POST /classrooms
  # POST /classrooms.json
  def create
    @classroom = Classroom.new(classroom_params)

    respond_to do |format|
      if @classroom.save
        format.html { redirect_to @classroom, notice: 'Classroom was successfully created.' }
        format.json { render :show, status: :created, location: @classroom }
      else
        format.html { render :new }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classrooms/1
  # PATCH/PUT /classrooms/1.json
  def update
    respond_to do |format|
      if @classroom.update(classroom_params)
        format.html { redirect_to classrooms_path, notice: 'Classroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @classroom }
      else
        format.html { render :edit }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classrooms/1
  # DELETE /classrooms/1.json
  def destroy
    @classroom.destroy
    respond_to do |format|
      format.html { redirect_to classrooms_url, notice: 'Classroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classroom_params
      params.require(:classroom).permit(:name, :building_id, :occupancy, :smartboard, :pc, :doccam, :extron, :projector, :bluray, :description, :contact_id, :tcontact_id)
    end
end
