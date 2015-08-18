class Classroom < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	belongs_to :building, foreign_key: "code"
	has_many :pictures, dependent: :destroy

	def thumbnail
		self.pictures.first
	end

	def tech
		result = []
		result << "Smartboard" if smartboard
		result << "PC" if pc
		result << "Document Camera"	if doccam
		result << "Projector" if projector
		result << "Extron" if extron
		result << "Bluray/DVD Player" if bluray
		return result
	end
end
