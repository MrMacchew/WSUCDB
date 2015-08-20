class UsersController < ApplicationController

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

  def destroy
		@user = User.find(params[:id])
		@user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password)
		end
end
