class City < ActiveRecord::Base
	has_many :search
	has_many :seat
	has_many :schools
end
