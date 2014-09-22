class Student < ActiveRecord::Base
	has_many :orders
	belongs_to :country

	def name
		"#{self.first_name} #{self.last_name}"
	end
end
