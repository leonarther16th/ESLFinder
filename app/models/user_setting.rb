class UserSetting < ActiveRecord::Base
	serialize :setting, Hash
	belongs_to :user
	before_save :default_values
	

	def default_values
		self.setting ||= {increase_prices_by: 0.0, hide_suggested_student_price: 'No'}
	end
end
