class AddTcontactsToClassrooms < ActiveRecord::Migration
  def change
 		add_belongs_to(:classrooms, :tcontact) 	
	end
end
