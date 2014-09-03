class Offer < ActiveRecord::Base
	belongs_to :school
	belongs_to :region, foreign_key: "regions"
	belongs_to :course
	has_many :orders
	has_one :user, :through => :schools
	
end
