class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def confirmation_email(order)
    @order = order
    mail(to: @order.email, subject: 'Your order has successfully been placed!')
  end
end
