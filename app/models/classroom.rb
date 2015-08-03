class Classroom < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true

	has_many :pictures, dependent: :destroy
	
end
