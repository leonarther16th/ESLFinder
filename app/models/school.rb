class School < ActiveRecord::Base
	belongs_to :city
	belongs_to :country
	has_many :offers
	belongs_to :user

	has_many :orders, :through => :offers

	letsrate_rateable "quality", "price", "learning"
end
