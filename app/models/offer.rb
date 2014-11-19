class Offer < ActiveRecord::Base
	belongs_to :school
	belongs_to :region, foreign_key: "regions"
	belongs_to :course
	has_many :orders
	has_one :user, :through => :schools
	serialize :schools,  Array
	
	validates :school_id, :regions, :flag, :course_id, :weekly_price, :regular_price, :pay_within, :min_num_weeks, :max_num_weeks, :start_date, :end_date, :num_of_seats, :weekly_limit, presence: { message: "This field is required, please!"}
end
