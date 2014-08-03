class School < ActiveRecord::Base
	belongs_to :city
	belongs_to :country

	letsrate_rateable "quality", "price", "learning"
end
