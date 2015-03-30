class School < ActiveRecord::Base
	belongs_to :city
	belongs_to :country
	has_many :offers
	belongs_to :user

	has_many :orders, :through => :offers

	ratyrate_rateable "quality", "price", "learning"
	
	validates_presence_of :name, :city_id, :country_id

	def avg_rate
		q = Rate.where('rateable_type = ? and rateable_id = ?' ,'School', self.id).average(:stars).to_i
	end


	def sold_weeks(state = 'confirmed')

		total_sold_weeks = 0
		offers = Offer.where('school_id = ?', self.id)
		offers.each do |offer|
			total_sold_weeks = total_sold_weeks + orders = Order.where('offer_id = ? and state = ?', offer.id, state).sum(:num_weeks)
		end

		return total_sold_weeks

	end
end
