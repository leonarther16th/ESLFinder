# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


regions = [[2, 'Antarctic'],
			[3, 'Asia without China'],
			[4, 'Europe'],
			[5, 'Latin America'],
			[6, 'North America'],
			[7, 'Oceania'],
			[8, 'South America'],
			[9, 'China'],
			[10, 'Middle East'],
			[1, 'Africa'],
			[11, 'Korea']]
countries = [[246, 'Palestine', 10, 'PL'],
			[1, 'Egypt', 10, 'EG'],
			[2, 'Libya', 10, 'LY'],
			[3, 'Morocco', 10, 'MA'],
			[4, 'Tunisia', 10, 'TN'],
			[5, 'Western Sahara', 1, 'EH'],
			[6, 'Angola', 1, 'AO'],
			[7, 'Benin', 1, 'BJ'],
			[8, 'Botswana', 1, 'BW'],
			[9, 'Burkina Faso', 1, 'BF'],
			[10, 'Burundi', 1, 'BI'],
			[11, 'Cameroon', 1, 'CM'],
			[12, 'Cape Verde', 1, 'CV'],
			[13, 'Central African Republic', 1, 'CF'],
			[14, 'Chad', 1, 'TD'],
			[15, 'Comoros', 1, 'KM'],
			[16, 'Congo', 1, 'CG'],
			[18, "Côte d'Ivoire", 1, 'CI'],
			[19, 'Djibouti', 1, 'DJ'],
			[20, 'Equatorial Guinea', 1, 'GQ'],
			[21, 'Eritrea', 1, 'ER'],
			[22, 'Ethiopia', 1, 'ET'],
			[23, 'Gabon', 1, 'GA'],
			[24, 'Gambia', 1, 'GM'],
			[25, 'Ghana', 1, 'GH'],
			[26, 'Guinea', 1, 'GN'],
			[27, 'Guinea-Bissau', 1, 'GW'],
			[28, 'Kenya', 1, 'KE'],
			[29, 'Lesotho', 1, 'LS'],
			[30, 'Liberia', 1, 'LR'],
			[31, 'Madagascar', 1, 'MG'],
			[32, 'Malawi', 1, 'MW'],
			[33, 'Mali', 1, 'ML'],
			[34, 'Mauritania', 1, 'MR'],
			[35, 'Mauritius', 1, 'MU'],
			[36, 'Mayotte', 1, 'YT'],
			[37, 'Mozambique', 1, 'MZ'],
			[38, 'Namibia', 1, ''],
			[39, 'Niger', 1, 'NE'],
			[40, 'Nigeria', 1, 'NG'],
			[41, 'Réunion', 1, 'RE'],
			[42, 'Rwanda', 1, 'RW'],
			[43, 'Saint Helena', 1, ''],
			[44, 'Sao Tomé and Principe', 1, 'ST'],
			[45, 'Senegal', 1, 'SN'],
			[46, 'Seychelles', 1, 'SC'],
			[47, 'Sierra Leone', 1, 'SL'],
			[48, 'Somalia', 10, 'SO'],
			[49, 'South Africa', 1, 'ZA'],
			[50, 'Sudan', 10, 'SD'],
			[51, 'Swaziland', 1, 'SZ'],
			[52, 'Tanzania, United Republic of', 1, 'TZ'],
			[53, 'Togo', 1, 'TG'],
			[54, 'Uganda', 1, 'UG'],
			[55, 'Zambia', 1, 'ZM'],
			[56, 'Zimbabwe', 1, 'ZW'],
			[57, 'Bouvet Island', 2, 'BV'],
			[58, 'French Southern Territories', 2, 'TF'],
			[59, 'Heard Island and McDonald Islands', 2, 'HM'],
			[60, 'South Georgia and the South Sandwich Islands', 2, 'GS'],
			[61, 'China', 9, 'CN'],
			[62, 'Hong Kong', 3, 'HK'],
			[63, 'Japan', 3, 'JP'],
			[65, 'Korea, Republic of', 11, 'KR'],
			[66, 'Macao', 3, ''],
			[67, 'Mongolia', 3, 'MN'],
			[68, 'Taiwan', 3, 'TW'],
			[69, 'Belarus', 3, 'BY'],
			[70, 'Moldova', 3, ''],
			[71, 'Russia', 4, 'RU'],
			[72, 'Ukraine', 4, 'UA'],
			[73, 'Afghanistan', 3, 'AF'],
			[74, 'Armenia', 3, 'AM'],
			[75, 'Azerbaijan', 3, 'AZ'],
			[76, 'Bahrain', 10, 'BH'],
			[77, 'Cyprus', 3, 'CY'],
			[78, 'Georgia', 3, 'GE'],
			[79, 'Iran', 3, 'IR'],
			[80, 'Iraq', 10, 'IQ'],
			[81, 'Israel', 10, 'IL'],
			[82, 'Jordan', 10, 'JO'],
			[83, 'Kazakhstan', 4, 'KZ'],
			[84, 'Kuwait', 10, 'KW'],
			[85, 'Kyrgyzstan', 4, 'KG'],
			[86, 'Lebanon', 10, 'LB'],
			[87, 'Oman', 10, 'OM'],
			[88, 'Pakistan', 3, 'PK'],
			[89, 'Palestine', 3, ''],
			[90, 'Qatar', 10, 'QA'],
			[91, 'Saudi Arabia', 10, 'SA'],
			[92, 'Syria', 10, 'SY'],
			[93, 'Tajikistan', 3, 'TJ'],
			[94, 'Turkey', 4, 'TR'],
			[95, 'Turkmenistan', 3, 'TM'],
			[96, 'United Arab Emirates', 10, 'AE'],
			[97, 'Uzbekistan', 3, 'UZ'],
			[98, 'Yemen', 10, 'YE'],
			[99, 'South & Southeast Asia', 3, ''],
			[100, 'Bangladesh', 3, 'BD'],
			[101, 'Bhutan', 3, 'BT'],
			[103, 'Brunei Darussalam', 3, 'BN'],
			[104, 'Cambodia', 3, 'KH'],
			[106, 'India', 3, 'IN'],
			[107, 'Indonesia', 3, 'ID'],
			[108, "Lao People's Democratic Republic", 3, 'LA'],
			[109, 'Malaysia', 3, 'MY'],
			[110, 'Maldives', 3, 'MV'],
			[111, 'Myanmar', 3, 'MM'],
			[112, 'Nepal', 3, 'NP'],
			[113, 'Philippines', 3, 'PH'],
			[114, 'Singapore', 3, 'SG'],
			[115, 'Sri Lanka', 3, 'LK'],
			[116, 'Thailand', 3, 'TH'],
			[117, 'Timor-Leste', 3, 'TP'],
			[118, 'Vietnam', 3, 'VN'],
			[119, 'Åland Islands', 4, ''],
			[120, 'Albania', 4, 'AL'],
			[121, 'Andorra', 4, 'AD'],
			[122, 'Austria', 4, 'AT'],
			[123, 'Belgium', 4, 'BE'],
			[124, 'Bosnia and Herzegovina', 4, 'BA'],
			[125, 'Bulgaria', 4, 'BG'],
			[126, 'Croatia', 4, 'HR'],
			[127, 'Czech Republic', 4, 'CZ'],
			[128, 'Denmark', 4, 'DK'],
			[129, 'Estonia', 4, 'EE'],
			[130, 'Faroe Islands', 4, 'FO'],
			[131, 'Finland', 4, 'FI'],
			[132, 'France', 4, 'FR'],
			[133, 'Germany', 4, 'DE'],
			[134, 'Gibraltar', 4, 'GI'],
			[135, 'Greece', 4, 'GR'],
			[136, 'Greenland', 4, 'GL'],
			[138, 'Holy See (Vatican City State)', 4, 'VA'],
			[139, 'Hungary', 4, 'HU'],
			[140, 'Iceland', 4, 'IS'],
			[141, 'Ireland', 4, 'IE'],
			[142, 'Italy', 4, 'IT'],
			[144, 'Latvia', 4, 'LV'],
			[145, 'Liechtenstein', 4, 'LI'],
			[146, 'Lithuania', 4, 'LT'],
			[147, 'Luxembourg', 4, 'LU'],
			[148, 'Macedonia, the former Yugoslav Republic of', 4, 'YU'],
			[149, 'Malta', 4, 'MT'],
			[150, 'Monaco', 4, 'MC'],
			[151, 'Montenegro', 4, ''],
			[152, 'Netherlands', 4, 'NL'],
			[153, 'Norway', 4, 'NO'],
			[154, 'Poland', 4, 'PL'],
			[155, 'Portugal', 4, 'PT'],
			[156, 'Romania', 4, 'RO'],
			[157, 'San Marino', 4, 'SM'],
			[158, 'Serbia', 4, ''],
			[159, 'Slovakia', 4, 'SK'],
			[160, 'Slovenia', 4, 'SI'],
			[161, 'Spain', 4, 'ES'],
			[162, 'Svalbard and Jan Mayen', 4, 'SJ'],
			[163, 'Sweden', 4, 'SE'],
			[164, 'Switzerland', 4, 'CH'],
			[165, 'United Kingdom', 4, 'UK'],
			[166, 'Anguilla', 5, 'AI'],
			[167, 'Antigua and Barbuda', 5, 'AG'],
			[168, 'Aruba', 5, 'AW'],
			[169, 'Bahamas', 5, 'BS'],
			[170, 'Barbados', 5, 'BB'],
			[171, 'Bermuda', 5, 'BM'],
			[172, 'Cayman Islands', 5, 'KY'],
			[173, 'Cuba', 5, 'CU'],
			[174, 'Dominica', 5, 'DM'],
			[175, 'Dominican Republic', 5, 'DO'],
			[176, 'Grenada', 5, 'GD'],
			[177, 'Guadeloupe', 5, 'GP'],
			[178, 'Haiti', 5, 'HT'],
			[179, 'Jamaica', 5, 'JM'],
			[180, 'Martinique', 5, 'MQ'],
			[181, 'Montserrat', 5, 'MS'],
			[182, 'Netherlands Antilles', 5, 'AN'],
			[183, 'Puerto Rico', 5, 'PR'],
			[184, 'Saint Bathélemy', 5, ''],
			[185, 'Saint Kitts and Nevis', 5, ''],
			[186, 'Saint Lucia', 5, 'LC'],
			[187, 'Saint Martin (French Part)', 5, ''],
			[188, 'Saint Vincent and the Grenadines', 5, ''],
			[189, 'Trinidad and Tobago', 5, 'TT'],
			[190, 'Turks and Caicos Islands', 5, 'TC'],
			[191, 'Virgin Islands, British', 5, 'VG'],
			[192, 'Virgin Islands, U.S.', 5, 'VI'],
			[193, 'Belize', 5, 'BZ'],
			[194, 'Costa Rica', 5, 'CR'],
			[195, 'El Salvador', 5, 'SV'],
			[196, 'Guatemala', 5, 'GT'],
			[197, 'Honduras', 5, 'HN'],
			[198, 'Mexico', 5, 'MX'],
			[199, 'Nicaragua', 5, 'NI'],
			[200, 'Panama', 5, 'PA'],
			[201, 'Canada', 6, 'CA'],
			[202, 'Saint Pierre and Miquelon', 6, ''],
			[203, 'United States', 6, 'US'],
			[204, 'American Samoa', 7, 'AS'],
			[205, 'Australia', 7, 'AU'],
			[206, 'Christmas Island', 7, 'CX'],
			[207, 'Cocos (Keeling) Islands', 7, 'CC'],
			[208, 'Cook Islands', 7, 'CK'],
			[209, 'Fiji', 7, 'FJ'],
			[210, 'French Polynesia', 7, 'PF'],
			[211, 'Guam', 7, 'GU'],
			[212, 'Kiribati', 7, 'KI'],
			[213, 'Marshall Islands', 7, 'MH'],
			[214, 'Micronesia, Federated States of', 7, ''],
			[215, 'Nauru', 7, 'NR'],
			[216, 'New Caledonia', 7, 'NC'],
			[217, 'New Zealand', 7, 'NZ'],
			[218, 'Niue', 7, 'NU'],
			[219, 'Norfolk Island', 7, 'NF'],
			[220, 'Northern Mariana Islands', 7, 'MP'],
			[221, 'Palau', 7, 'PW'],
			[222, 'Papua New Guinea', 7, 'PG'],
			[223, 'Pitcairn', 7, 'PN'],
			[224, 'Samoa', 7, 'WS'],
			[225, 'Solomon Islands', 7, 'SB'],
			[226, 'Tokelau', 7, 'TK'],
			[227, 'Tonga', 7, 'TO'],
			[228, 'Tuvalu', 7, 'TV'],
			[229, 'Minor Outlying Islands', 7, 'UM'],
			[230, 'Vanuatu', 7, 'VU'],
			[231, 'Wallis and Futuna', 7, 'WF'],
			[232, 'Argentina', 5, 'AR'],
			[233, 'Bolivia', 5, 'BO'],
			[234, 'Brazil', 5, 'BR'],
			[235, 'Chile', 5, 'CL'],
			[236, 'Colombia', 5, 'CO'],
			[237, 'Ecuador', 5, 'EC'],
			[238, 'Falkland Islands (Malvinas)', 5, 'FK'],
			[239, 'French Guiana', 5, 'GF'],
			[240, 'Guyana', 5, 'GY'],
			[241, 'Paraguay', 5, 'PY'],
			[242, 'Peru', 5, 'PE'],
			[243, 'Suriname', 5, 'SR'],
			[244, 'Uruguay', 5, 'UY'],
			[245, 'Venezuela', 5, 'VE']]


faqs = [{title: "How to use the system", q: "How can I use the system to book a seat? Please show me step by step.", a: "For the initial set up here are 4 Simple Steps To Control Your Profit and Privacy
<ol>
<li>Go to www.eslBooking.com and enter your username and password</li>
<li>Click on the 'User Icon' at the top of the page and create your new password (if you wish)</li>
<li>Click on the 'Setting Icon' at the very top of the page, you will see a drop list of two items (one is “Agency Management”)</li>
<li>Click on 'Agency Management', you will notice the following:
<ul>
    <li>Edit Profile: Here you can edit your profile (if you wish)</li>
    <li>Pricing Setting: Here you can increase your price from the drop list. This is a helpful tool if you want some privacy so no staff members or students know the original prices. For example, you can increase your price by 30% (0.3). eslBooking will then immediately increase all offers by 30%. Then you can share your screen with your student to view all increased offers.</li>
    <li>Agent Setting: This is a great feature for agencies that have several sales people. You can create as many users as you like so you have full control of their performance and 100% price privacy. In my next email, I will teach you how to use it.</li>
</ul>
</li>
</ol>
To help in the process of choosing the best Offers, follow these simple steps:
<ol>
<li>Go to www.eslBooking.com and enter your login information (username and password)</li>
<li>Click on the 'Sign In' Button. This will take you to the “Search” page. At the bottom of this page, you will notice the Best Offers Available In Each City (Toronto, Ottawa, Halifax)</li>
<li>Enter your students' study details on the top left hand side under 'Find Available Seats'</li>
<li>Click on the “Search” button. This will take you to the available offers on the next page.</li>
<li>Review all offers available and choose the best one for your student.</li>
<li>Click on “Book Now.'</li>
</ol>
The ‘Book Now’ feature works by following these 8 short steps:
<ol>
<li>As you search for an available Offer, you will notice that there is a blue ‘Book Now’ button</li>
<li>If you decide to book an Offer, simply click the blue 'Book Now’ button</li>
<li>Enter your credit card information to confirm your purchase (your credit card information only holds the confirmation until payment is made directly to school prior to the offer deadline)</li>
<li>You will then see the following notice, 'Order has been confirmed'</li>
<li>You will also see a new page where you can link a student’s name to the order (to remember who it was made for - if you make several bookings for several students, you will find this page useful)</li>
<li>On the same page you also can view the school director's information for any clarification regarding your booking</li>
<li>On the same page we encourage you to rate the school</li>
<li>On the same page you also can CANCEL the order if needed - all on this one page.</li>
</ol>"}, {title: "How to use the system", q: "What is the difference between 'Book Now' and 'Confirm'?", a: "Once you book an offer, that offer will be saved for a period of time for your student, the time is deferent from one offer to the other. Your student will have the option to confirm the offer permenetly by providing his/her credit card information. The credit card will not be charged. It is there to hold the confirmation only. Once you complete the confirmation you will be given an automatic 'Confirmation Code'. Also you can link the student to this offer from the same page so you know in the future which offer was given to which student. Once you have your Confirmation  Code, then your work with eslBooking is completed. Now, you need to register the student in the school. You will fill the student on line application from the school. All other prices (homestay, textbooks, etc..) will remain the same as per the schools policies. The school will know the Offer has been purchased and the invoice will be adjusted accordingly. Remember that paying the school directly within the Offer period shown on the offer is a must to successfully confirm the offer."},{title: "How to use the system", q: "Can more than one staff from the same agency have access to the system?", a: "Yes. It is no problem to have several staff from the same agency. Each one can have their own account and username."}, {title: "How to use the system", q: "After I make a booking, where can I find a complete quote including all other services including homestay?", a: "eslBooking offers only discounted tuition prices. You can find the prices for homestay and other services from your partners' brochures."}, {title: "How to use the system", q: "We are a large agency with several sales staff. We don’t want to give our usernames and passwords to all sales staff. Also we don’t want them to know the original prices. How can we manage this?", a: "Don’t worry, this has been thought of. In order to do so please go to the “Setting” icon and click on “Agent Management.” From there click on “Agent Setting.” For more information please e-mail us at info@eslBooking.com and we will guide you through the process."}, 
	{title: "Strategy", q: "What is the pricing strategy that the eslBooking system uses?", a: "eslBooking uses the Yield Management Pricing Strategy which has been used successfully by the airline and hotel industries for the last 15 years."},{title: "Strategy", q: "Is eslBooking the first system that applies Yield Management in the ESL industry?", a: "Yes. The eslBooking system is the first of its kind in the educational industry."}, {title: "Strategy", q: "Why does the eslBooking system use Yield Management?", a: "Yield Management helps in providing dynamic prices to sell the right capacity (seats) to the right agents at the right price. Without limited capacity, Yield Management  can’t be used."}, {title: "Strategy", q: "What is the business environment where Yield Management can help?", a: "Environments where there is the ability to segment markets, where there is a perishable inventory, where there are advanced sales, where there is fluctuating demand, and where there is an accurate information system (eslBooking)."}, {title: "How to use the system", q: "Can students use or browse the eslBooking offers?", a: "No. This version is for agent and school use only."}, {title: "How to use the system", q: "What is the best timing to find the best available deals?", a: "There is no specific timing for the best available deals. Three factors control a school’s pricing strategy; number of empty seats in an existing class, timing of empty seats in existing classes and kind of existing course where there are empty seats."}, {title: "How to use the system", q: "Can I use eslBooking for last minute sales?", a: "Prices are offered based on available seats which can't be predicted by booking early or in the last minute. Offers may be available for students looking for last minute deals, however, they can’t be guaranteed."}, {title: "How to use the system", q: "Can I book more than one offer per student?", a: "You can book more than one eslBooking offer for ONE student if you find them, but be mindful of the start date of each offer. This is a “Bundled Offer,” so you need to email the school director to manually issue one letter of acceptance and one invoice."}, {title: "Sales", q: "I want to show students eslBooking prices on my computer, but don’t want them to see the original prices. What can I do?", a: "You can use the tab called “Pricing Setting” from the top “Setting” icon to increase the prices offered by the percentage you wish (i.e.: 5%, 10%, ..30%..). At eslBooking we protect your price privacy."}, {title: "Sales", q: "I want to book a group. How can I do this?", a: "Book your students individually as soon as you can before someone else purchases from the available seats. Once the booking is made then please contact the campus director directly to create and issue a group quotation (including all services that you may require)."}, {title: "Sales", q: "Can I book several student offers at one time?", a: "In order to ensure accuracy you must book each offer individually."}, {title: "Sales", q: "Can an offer ever be extended past the deadline?", a: "No, they cannot."}, {title: "Sales", q: "Can I contact the school directly to see if I can get a better deal than what’s offered on eslBooking?", a: "Yes, you can. However, deals cannot be combined."}, {title: "Sales", q: "I understand that deals cannot be combined, but if a school is offering a gift to the student (such as an iPhone or Visa gift card), can this student gift be combined with the eslBooking offer?", a: "No, they cannot. The eslBooking price is final and cannot be combined with any other existing offers or promotions."}, {title: "Sales", q: "Is the school’s current refund policy applicable to eslBooking offers?", a: "Yes."}, {title: "Sales", q: "Who pays me commission, eslBooking or the school? ", a: "No commission will be paid out to agents. Instead, agents will be deducting their profit before sending the tuition fees to the school."}, {title: "Sales", q: "I understand from the above question that I must pay the fees to the school after deducting my commission, however, I would like my student to send the money (including my profit) to the school. Can the school send me my commission / profit?", a: "Yes. Please send your invoice (including the eslBooking confirmation code) for payment to be processed."}, {title: "Sales", q: "What price should I charge my student? It is not clear if there is a net or gross price?", a: "By looking at any offer you will notice a price in green. This price is the price that an agent will pay to the school. No commission, discounts, or offers will be paid back from that amount. Below the “Book now” button (blue) is the recommended student price (red). This is the recommended price that we ask you to charge your student. The difference between the green and the red price is your profit."}, {title: "Sales", q: "Can I increase the offer price (in green) and therefore my profit?", a: "Yes. You can increase your profit by increasing the price in green (you can automatically do that by changing the pricing setting as explained above). It is required that you do not lower the student price (red) lower than the recommended price."}, {title: "Sales", q: "How can I be protected if I book a program for a student and then he or she visits another agent (who has access to eslBooking) and offers them a lower price? ", a: "The eslBooking Terms and Conditions asks agents not to lower their price below the recommended price (written in red in each offer). However, eslBooking cannot control the actions of some agents if they decide to do this. It should be noted that this situation could happen regardless of eslBooking. i.e.: one agent doesn’t give students any discount while another gives students a portion of their own commission."}, {title: "How to use the system", q: "Can I hide the recommended price?", a: "Yes. Just go to ‘Pricing Setting’ under the ‘Setting icon’ at the top menu, then you can click on ‘Hide suggested student price.’"}, {title: "How to use the system", q: "What if I don’t find the deal I want? For example: I want to book a student for 24 weeks in Toronto, in the third week of January, but there are no offers available.", a: "Change the number of weeks to fewer than 24 and book the remaining weeks directly with the school. If you still don’t find an available offer you may change the start date or the city. If your start date or city cannot be changed then it is recommended to visit often for new offers."}, {title: "Strategy", q: "Can I find other schools offering their empty seat deals?", a: "eslBooking is building a collective group of member schools from around the world to be a part of this system."}, {title: "Marketing", q: "Can eslBooking contact me whenever a new offer is uploaded for a particular school?", a: "Promotional e-mails are sent out weekly highlighting the newest deals available."}, {title: "Marketing", q: "How will I know when a new offer is available?", a: "Simply check back daily as new offers will be posted on a daily basis."}, {title: "How to use the system", q: "Is there a maximum number of offers that I can make at any given time?", a: "No. You can make as many you like."}, {title: "Strategy", q: "Why eslBooking is by Invitation only?", a: "Because the concept of eslBooking offers limited opportunities the demand has been greater than expected. Therefore, the IWL-Invitation Waiting List is our way to protect the ESL community from negative competition."}, {title: "Strategy", q: "What do you mean by 'empty seats'", a: "Empty seats means available seats within current classes. So a school doesn’t rent and lose space or hire a new teacher to open classes."}, {title: "How to use the system", q: "I am afraid that if one of my students receives these great deals they will tell other students (who already paid more) which will make them unhappy.", a: "To avoid this the best thing is to tell your student the truth. The prices are different because in eslBooking they are different. It is recommended to show them the eslBooking offers so they understand the concept. Of course you don’t want them to know your cost, that’s why you can privately increase the price through price setting. You can use the tab called “Pricing Setting” from the top “Setting” icon to increase the prices offered by the percentage you wish (i.e.: 5%, 10%, .., 30%). At eslBooking your privacy is our top priority."}, {title: "How to use the system", q: "I cannot access my account. My password or email address aren’t working.", a: "Please feel free to send an e-mail to info@eslBooking.com and we will resolve the problem for you."}]


	faqs.each do |f|
		Faq.create(question: f[:q], answer: f[:a], category: f[:title], active: true)
	end

			#regions.each do |r|
				#Region.create(id: r[0], name: r[1])
			#end

			#countries.each do |c|
				#Country.create(id: c[0], name: c[1], region_id: c[2], code: c[3])
			#end

