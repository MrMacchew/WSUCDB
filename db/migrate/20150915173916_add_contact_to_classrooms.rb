class AddContactToClassrooms < ActiveRecord::Migration
  def change
  	add_belongs_to(:classrooms, :contact)
	end
end
