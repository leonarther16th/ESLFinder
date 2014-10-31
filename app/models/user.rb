class User < ActiveRecord::Base

  ratyrate_rater

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :search
  has_one :user_setting, dependent: :destroy
  has_one :agency
  has_many :schools
  has_many :orders
  has_many :offers, :through => :schools
  has_many :user_states
  has_many :reservation
  
  self.per_page = 10

  after_create :initiate_user_settings
  after_create :create_agency_record

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

  def current_active_state
    states = self.user_states.where('active = ?', true)
    if states.count > 0
      "#{states[0].user_state}"
    else
      'n/a'
    end
  end

  def full_name
  	if !self.first_name.blank?
  		self.first_name + ' ' + self.last_name 
  	else
  		 'You!'
  	end
  end

  def create_agency_record
    agency = Agency.new
    agency.user = self
    agency.name = self.agency_name
    agency.save
  end

  def initiate_user_settings
    default_settings = {}
    AppSetting.all.each do |set|
      default_settings[set.name] = set.options[0]
    end

    UserSetting.new(user: self, setting: default_settings).save
  end

end
