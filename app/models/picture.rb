class Picture < ActiveRecord::Base
	validates_presence_of :name, :image
  validate_uniqueness_of :name
	belongs_to :classroom
	mount_uploader :image, ImageUploader



end
