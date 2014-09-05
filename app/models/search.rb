class Search < ActiveRecord::Base
	
	validates_presence_of :num_weeks, :num_seats, :start_date, :country_id
	belongs_to :course
	belongs_to :user
	belongs_to :city
	belongs_to :country
end
