class Reservation < ActiveRecord::Base
	validates :card_type, :card_name, :card_number, :expiry_year, :expiry_month, :cvc, presence: true
	validates :card_number, :numericality => {:only_integer => true}, length: { minimum: 16, maximum: 16, too_long: "Please enter a valid credit card number", too_short: "Please enter a valid credit card number" }
	validates :cvc, :numericality => {:only_integer => true}, length: { minimum: 3, maximum: 3, too_long: "Please enter a valid CVC number", too_short: "Please enter a valid credit card number" }
	validates_format_of :card_name, :with => /^[a-zA-Z]+$/ , :multiline => true
	belongs_to :order
	belongs_to :user

end
