class Student < ActiveRecord::Base
	has_many :orders
	belongs_to :country
	validates_presence_of :first_name, :last_name, :country_id

	def name
		"#{self.first_name} #{self.last_name}"
	end
end
