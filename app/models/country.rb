class Country < ActiveRecord::Base
	belongs_to :region
	has_many :schools
	has_many :agencies
	has_many :searches
end
