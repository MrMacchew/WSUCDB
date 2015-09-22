class Tcontact < ActiveRecord::Base
	has_many :classrooms

	def name
		@name = self.first_name + " " + self.last_name
	end
end
