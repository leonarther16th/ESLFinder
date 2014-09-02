class Order < ActiveRecord::Base
	belongs_to :offer
	belongs_to :user
	has_one :school, :through => :offer
end
