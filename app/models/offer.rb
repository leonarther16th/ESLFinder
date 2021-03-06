class Offer < ActiveRecord::Base
	belongs_to :school
	belongs_to :region, foreign_key: "regions"
	belongs_to :course
	has_many :orders
	has_one :user, :through => :schools
	serialize :schools,  Array
	
	validates :school_id, :regions, :flag, :course_id, :weekly_price, :regular_price, :pay_within, :min_num_weeks, :max_num_weeks, :start_date, :end_date, :num_of_seats, :weekly_limit, presence: { message: "This field is required, please!"}

	def sort(search)
		range = (self.start_date..self.end_date)
		if range.include?(search[:start_date]) and search[:num_weeks].between?(self.min_num_weeks, self.max_num_weeks)
			return -1
		else
			return 1
		end
	end

	def final_weekly_price
		eslBooking_extra = AdminAppSetting.where('name = ?', 'increase_school_offer_price_by')[0].value.to_i
		if eslBooking_extra
			return self.weekly_price + eslBooking_extra
		else
			self.weekly_price
		end
	end

end
