class AppSetting < ActiveRecord::Base
	serialize :options, Array
end
