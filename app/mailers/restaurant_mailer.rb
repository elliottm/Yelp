class RestaurantMailer < ActionMailer::Base
  default from: "ulster@ulster.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.restaurant_mailer.notify_owner.subject
  #
  def notify_owner(restaurant)
    @restaurant = restaurant
    mail to: restaurant.email, subject: 'restaurant added'
  end

  #action in create action within controller, which draws
  #from model, which activates this.

end
