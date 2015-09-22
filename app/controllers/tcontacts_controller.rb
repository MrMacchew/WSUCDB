class TcontactsController < ApplicationController

	before_action :set_tcontact, only: [:show, :edit, :update, :destroy]

  before_action :require_user, only: [:new, :edit, :destroy]

	def index
		@tcontacts = Tcontact.all.order('last_name')
	end

	def show
		@tcontact = Tcontact.find(params[:id])
	end

  def new
		@tcontact = Tcontact.new
	end

	def create
		@tcontact = Tcontact.new(tcontact_params)
		
		respond_to do |format|
			if @tcontact.save
				format.html { redirect_to tcontacts_path, notice: 'Tcontact was created successfully.'}
			else
				format.html { render :new }
			end
		end
	end
	
	def edit
	end

	def update
		respond_to do |format|
			if @tcontact.update(tcontact_params)
				format.html { redirect_to tcontacts_path, notice: 'Tcontact was successfully updated.' }
			else
				format.html { render :show, status: :ok, location: @tcontact }
			end
		end
	end

	def destroy
		@tcontact.destroy
		respond_to do |format|
			format.html { redirect_to tcontacts_url, notice: 'Tcontact was successfully destroyed.' }
		end
	end

	private
		
		def set_tcontact
			@tcontact = Tcontact.find(params[:id])
		end

		#trusted parameters
		def tcontact_params
			params.require(:tcontact).permit(:first_name, :last_name, :email)
		end
	
end
