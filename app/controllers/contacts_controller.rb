class ContactsController < ApplicationController

	before_action :set_contact, only: [:show, :edit, :update, :destroy]

  before_action :require_user, only: [:new, :edit, :destroy]

	def index
		@contacts = Contact.all.order('last_name')
	end

	def show
		@contact = Contact.find(params[:id])
	end

  def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		
		respond_to do |format|
			if @contact.save
				format.html { redirect_to contacts_path, notice: 'Contact was created successfully.'}
			else
				format.html { render :new }
			end
		end
	end
	
	def edit
	end

	def update
		respond_to do |format|
			if @contact.update(contact_params)
				format.html { redirect_to contacts_path, notice: 'Contact was successfully updated.' }
			else
				format.html { render :show, status: :ok, location: @contact }
			end
		end
	end

	def destroy
		@contact.destroy
		respond_to do |format|
			format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
		end
	end

	private
		
		def set_contact
			@contact = Contact.find(params[:id])
		end

		#trusted parameters
		def contact_params
			params.require(:contact).permit(:first_name, :last_name, :email)
		end
	
end
