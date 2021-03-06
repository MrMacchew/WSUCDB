class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	before_action :require_user, only: [:new, :edit, :destroy]
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
	#	session[:user_id] = @user.id
		respond_to do |format|
			if @user.save
				format.html { redirect_to users_path, notice: 'User Created Successfully.' }
			else
				format.html { render :new, notice: 'Failed to create user' }
			end
		end
	end

	def index
		@users = User.all.order("last_name")
	end
	
	def edit
		@user = User.find(params[:id])		
	end

    def destroy
	 	@user = User.find(params[:id])
		@user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
	
	def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to users_path, notice: 'User was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
	  end
	end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password)
		end

		def set_user
			@user = User.find(params[:id])
		end

end
