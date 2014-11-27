module OrdersHelper
	def labelTag(orderState)
		if orderState == 'pending'
			['label-warning', 'oi-clock']
		elsif orderState == 'reserved'
			['label-success', 'oi-check']
		elsif orderState == 'confirmed'
				['label-success', 'oi-check']
		end
			
	end
end
