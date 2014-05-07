class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :search

  def full_name
  	if !self.first_name.blank?
  		self.first_name + ' ' + self.last_name 
  	else
  		 'You!'
  	end
  end

end
