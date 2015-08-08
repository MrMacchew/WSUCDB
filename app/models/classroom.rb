class Classroom < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true

	has_many :pictures, dependent: :destroy

	def thumbnail
		self.pictures.first
	end
end
