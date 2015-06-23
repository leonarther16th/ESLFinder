module ApplicationHelper
	def footer
		@footer = 	{
			school: ["lugza is an easy way for you to increase your revenue without increasing your costs",
					 "lugza gives you the option of offering aggressive promotions without harming your brand ",
					 "lugza ensures that agents don’t take your low pricing for granted as it is offered through a third party site",
					 "lugza allows you to promote your prices without extra costs or effort by your Marketing team",
					 "lugza is online and updated regularly so you can enjoy 24/7 access"],
			agency: ["lugza is the first of its kind in the ESL industry, so you can be a part of history",
					 "lugza is the perfect place to find the best deals and benefit from the lowest discounted prices",
					 "lugza helps you sell the empty seats in your partners classrooms",
					 "lugza is online and updated regularly so you can enjoy 24/7 access"],
			admin: ["lugza is an easy way for you to increase your revenue without increasing your costs",
					"lugza gives you the option of offering aggressive promotions without harming your brand ",
					"lugza ensures that agents don’t take your low pricing for granted as it is offered through a third party site",
					"lugza allows you to promote your prices without extra costs or effort by your Marketing team",
					"lugza is online and updated regularly so you can enjoy 24/7 access"]}
	end


	def is_are(n)
		if n > 1
			'are'
		else
			'is'
		end
	end

	def createAccount(info = {})
		#info should include :email, :password, :company_name, first_name, :last_name, :agency_id, country_id, :city, :website, :ref_num, :address
		User.create(email: info[:email], password: info[:password], password_confirmation: info[:password])
		u = User.last
		us = UserState.new(user_id: u.id, user_state: :agency, active: :true)
		us.active = true
		us.save
		u.first_name = info[:first_name]
		u.last_name = info[:last_name]
		u.agency_id = info[:agency_id]
		u.agency_name = info[:company_name]
		u.state = :is_agency
		u.save
		u.agency.name = info[:company_name]
		u.agency.country_id = info[:country_id]
		u.agency.city = info[:city]
		u.agency.email = info[:email]
		u.agency.website = info[:website]
		u.agency.ref_num = info[:ref_num]
		u.agency.address = info[:address]
		u.agency.save
	end

	def rand_letter(n)
		chars = ("A".."Z").to_a
		Array.new(n, '').collect{chars[rand(chars.size)]}.join
	end

end
