class Restaurant < ActiveRecord::Base

	has_many :reviews
	after_create :send_email

	def send_email
		# raise Yelp::Application.config.action_mailer.smtp_settings.inspect
		mail = RestaurantMailer.notify_owner(self)
		mail.deliver
		#step one creates, step 2 sends
	end
	
end
