class Offer < ActiveRecord::Base
	belongs_to :school
	belongs_to :region, foreign_key: "regions"
	
end
