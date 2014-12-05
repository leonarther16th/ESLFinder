class OrderMailer < ActionMailer::Base
  default from: "info@eslbooking.com"
  layout 'email'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.order_confirmation.subject
  #
  def order_confirmation(order)
    @user = order.user
    @order = order

    mail :subject => "Thank you for your confirmation!",
         :to      => @user.email,
         :from    => "eslBooking <info@eslbooking.com>"
  end

  def order_booking(order)
    @user = order.user
    @order = order

    mail :subject => "Thank you for your booking!",
         :to      => @user.email,
         :from    => "eslBooking <info@eslbooking.com>"
  end

end
