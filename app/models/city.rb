class City < ActiveRecord::Base
	has_many :searchs
	has_many :seats
	has_many :schools
end
