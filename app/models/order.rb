class Order < ActiveRecord::Base
	belongs_to :offer
	belongs_to :user
	has_one :school, :through => :offer, :dependent => :delete
	has_one :reservation, :dependent => :delete
	has_one :student, :dependent => :delete
	self.per_page = 10

	def currentState

		if self.state != 'confirmed' && (self.created_at.to_date + self.offer.pay_within) < DateTime.now.to_date && self.state != 'canceled'
			self.state = 'canceled'
			self.save
			return 'canceled'
		else
			self.state
		end
		
	end

	def test
		self.state = 'canceled'
		self.save
		self.state
	end

	def ref_num
		self.offer_code
	end

end
