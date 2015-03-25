module TwilioClient

	def send_sms(to, body)
		from = '+15624576392'
		client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token

		message = client.messages.create(:from => from, :to => to, :body => body)
		message.status
	end


end