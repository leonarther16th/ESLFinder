module OrdersHelper
	def labelTag(orderState)
		if orderState == 'pending'
			['label-warning', 'oi-clock']
		elsif orderState == 'reserved'
			['label-success', 'oi-check']
		elsif orderState == 'confirmed'
				['label-success', 'oi-check']
		elsif orderState == 'canceled'
				['label-danger', 'oi-ban']
		end
			
	end

end
