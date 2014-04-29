class Search < ActiveRecord::Base
	
	validates_presence_of :num_weeks
	belongs_to :course
	belongs_to :user
	belongs_to :city
end
