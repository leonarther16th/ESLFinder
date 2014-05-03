class Seat < ActiveRecord::Base
	belongs_to :city
	belongs_to :course
end
