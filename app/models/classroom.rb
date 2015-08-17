class Classroom < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	belongs_to :building, foreign_key: "code"
	has_many :pictures, dependent: :destroy

	def thumbnail
		self.pictures.first
	end
end
