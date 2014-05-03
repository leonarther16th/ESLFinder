class Search < ActiveRecord::Base
	
	validates_presence_of :num_weeks, :num_seats, :start_date, :course_id, :city_id
	belongs_to :course
	belongs_to :user
	belongs_to :city
end
