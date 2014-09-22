class School < ActiveRecord::Base
	belongs_to :city
	belongs_to :country
	has_many :offers
	belongs_to :user

	has_many :orders, :through => :offers

	ratyrate_rateable "quality", "price", "learning"

	def avg_rate
		q = Rate.where('rateable_type = ? and rateable_id = ?' ,'School', self.id).average(:stars).to_i
	end
end
