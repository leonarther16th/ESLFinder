module ApplicationHelper
	def footer
		@footer = 	{
			school: ["Research shows that 20% of a school’s seats are empty at any given time; Yield management is not your solution, it’s your revolution",
					"Use cutting edge Yield Management & Dynamic Pricing to fill your empty seats",
					"Seats booked through a third party site protect your brand by making a clear difference between deals and your everyday pricing",
					"Used by over 250  agents worldwide with more added every week",
					"Activate and deactivate your deals at any time",
					"Activate deals in specific regions to control your school’s diversity"],
			agency: ["Control your commission! Lugza allows you to set your own commission rates up to 60%",
					"Use cutting edge Yield Management & Dynamic Pricing to get the best possible pricing",
					"Get access to the best prices for your students as research shows that at least 20% of school’s seats are empty at any given time",
					"Due to the extreme low prices offered by schools you can attract a new middle class student segment",
					"Schools are rated by agents like you to ensure the highest quality programs"],
			admin: ["Research shows that 20% of a school’s seats are empty at any given time; Yield management is not your solution, it’s your revolution",
					"Use cutting edge Yield Management & Dynamic Pricing to fill your empty seats",
					"Seats booked through a third party site protect your brand by making a clear difference between deals and your everyday pricing",
					"Used by over 250  agents worldwide with more added every week",
					"Activate and deactivate your deals at any time",
					"Activate deals in specific regions to control your school’s diversity"]}
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
