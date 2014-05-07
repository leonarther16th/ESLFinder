class Search < ActiveRecord::Base
	
	validates_presence_of :num_weeks, :num_seats, :start_date
	belongs_to :course
	belongs_to :user
	belongs_to :city
end
