class Faq < ActiveRecord::Base
	validates_presence_of :question, :answer, :category
end
