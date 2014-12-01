class Reservation < ActiveRecord::Base

	validates :card_type, :card_name, :card_number, :expiry_year, :expiry_month, :cvc, presence: { message: "This field is required, please!"}
	validates :card_number, :numericality => {:only_integer => true, message: "Only numbers, please!"}, length: { minimum: 16, maximum: 16, message: "Please enter a valid credit card number"}
	validates :card_name, length: { minimum: 4, maximum: 25, message: "Please enter a valid name"}
	validates :cvc, :numericality => {:only_integer => true, message: "Only numbers, please!"}, length: { minimum: 3, maximum: 3, message: "Please enter a valid CVC number" }
	validates_format_of :card_name, :with => /^[a-zA-Z]+\s+[a-zA-Z]+$/ , :multiline => true, message: "Please type in a correct name!"
	validate :experation_date_cannot_be_in_the_past
	validate :validate_credit_card_number


	belongs_to :order
	belongs_to :user


	def experation_date_cannot_be_in_the_past
		if self.expiry_month.present? and self.expiry_year.present?
			d = Date.new(self.expiry_year.to_i, self.expiry_month.to_i, 1)
			error_message = "Please select a valid date!"
			if d < Date.today
				errors.add(:expiry_month, error_message)
				errors.add(:expiry_year, error_message)
			end
		end
	end

	def credit_card_valid?(account_number)
		digits = account_number.scan(/./).map(&:to_i)
		check = digits.pop

		sum = digits.reverse.each_slice(2).map do |x, y|
			[(x * 2).divmod(10), y || 0]
		end.flatten.inject(:+)

		(10 - sum % 10) == check
	end

	def validate_credit_card_number
		if !credit_card_valid?(self.card_number)
			error_message = "Please insert a valid credit card number!"
			errors.add(:card_number, error_message)
		end
	end

end
