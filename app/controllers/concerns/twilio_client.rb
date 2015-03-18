module TwilioClient

	def send_sms(sms_params)
		sms_params[:from] = '+15624576392'
		client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token

		message = client.messages.create(sms_params)
		message.status
	end


end