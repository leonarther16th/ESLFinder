class AutoOffer < ActiveRecord::Base
	serialize :schools,  Array
	serialize :regions,  Array
	validates :schools, :regions, :flag, :course_id, :weekly_price, :regular_price, :pay_within, :min_num_weeks, :max_num_weeks, :start_date, :end_date, :num_of_seats, :weekly_limit, presence: { message: "This field is required, please!"}

	before_create :create_offers

	def create_offers
		regions = self.regions
	    schools = self.schools
	    regions.each do |r|
	      schools.each do |s|
	        if r != "" and s != ""
	          offer = Offer.new(school_id: s, weekly_price: self.weekly_price, min_num_weeks: self.min_num_weeks, max_num_weeks: self.max_num_weeks, start_date: self.start_date, end_date: self.end_date, num_of_seats: self.num_of_seats, weekly_limit: self.weekly_limit, flag: self.flag, regions: r, pay_within: self.pay_within, course_id: self.course_id, regular_price: self.regular_price)
	          offer.save
	        end
	      end
	    end
	end
end
