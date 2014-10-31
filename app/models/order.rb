class Order < ActiveRecord::Base
	belongs_to :offer
	belongs_to :user
	has_one :school, :through => :offer, :dependent => :delete
	has_one :reservation, :dependent => :delete
	has_one :student, :dependent => :delete
	self.per_page = 10
end
