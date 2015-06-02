class ChargesController < ApplicationController
	force_ssl if: :ssl_configured?

	  def ssl_configured?
	    !Rails.env.development?
	  end
	
	def new
	end

	def create
	  # Amount in cents
	  @amount = 500

	  customer = Stripe::Customer.create(
	    :email => 'example@stripe.com',
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'cad'
	  )

		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to charges_path
	end

end
