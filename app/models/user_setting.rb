class UserSetting < ActiveRecord::Base
	serialize :setting, Hash
	belongs_to :user

end
