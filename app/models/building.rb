class Building < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :code, presence: true, uniqueness: true
	has_many :classrooms
end
