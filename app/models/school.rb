class School < ActiveRecord::Base
	belongs_to :city
	belongs_to :country
	has_many :offers

	letsrate_rateable "quality", "price", "learning"
end
