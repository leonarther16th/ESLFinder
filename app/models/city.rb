class City < ActiveRecord::Base
	has_many :search
	has_many :seat
end
