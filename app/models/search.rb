class Search < ActiveRecord::Base
	attr_accessor :city_id
	validates_presence_of :num_weeks
	belongs_to :course
end
