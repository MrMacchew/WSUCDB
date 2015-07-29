class Classroom < ActiveRecord::Base
	validate_presence_of :name
	validate_uniqueness_of :name

	has_many :pictures, dependent: :destroy
	
end
