class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def confirmation_email(order)
    @order = order
    mail(to: @order.email, subject: "The order #: #{@order.id} has been processed.")
  end
end
