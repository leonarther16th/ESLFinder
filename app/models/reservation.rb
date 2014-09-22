class Reservation < ActiveRecord::Base
	validates :card_type, :card_name, :card_number, :expiry_year, :expiry_month, :cvc, presence: true
	belongs_to :order
	belongs_to :user

end
