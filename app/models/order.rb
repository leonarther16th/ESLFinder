class Order < ActiveRecord::Base
	belongs_to :offer
	belongs_to :user
	has_one :school, :through => :offer
	has_one :reservation
	has_one :student
end
