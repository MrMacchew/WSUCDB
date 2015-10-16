class ReportController < ApplicationController

	def index
		@classrooms = Classroom.all.order('name')
	end



end
