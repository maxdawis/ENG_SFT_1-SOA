class Department < ActiveRecord::Base
	belongs_to :institute
	has_many :courses
end
