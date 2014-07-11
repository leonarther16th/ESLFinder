class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :search


  state_machine :state, :initial => :is_user do
    event :to_agency do
      transition :is_user => :is_agency
    end
    event :to_agent do
      transition :is_user => :is_agent
    end
    event :to_school do
      transition :is_user => :is_school
    end
    event :approve_agency do
      transition :is_agency => :is_approved_agency, :if => :reference_provided?
    end
  end

  def reference_provided?
      #check on references here Agency.find_by_reference(self.rerefernce) exist?
      # if Agency.find_by_reference(this.reference)
        # true
      # else
       # false
      # end
      false 
  end

  def full_name
  	if !self.first_name.blank?
  		self.first_name + ' ' + self.last_name 
  	else
  		 'You!'
  	end
  end

end
