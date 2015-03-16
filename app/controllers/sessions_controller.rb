class SessionsController < ApplicationController
	include SessionsHelper

	def new
		if logged_in?
			redirect_to @current_business
		end
	end

	def create #login POST
		business = Business.find_by(email: params[:session][:email].downcase)
	    if business && business.authenticate(params[:session][:password])
	    	puts "hi"
	    	log_in business
	    	puts "i just logged in"
	    	redirect_to business #this calls business_url(business)
	    else
	      	# flash lasts, flast.now only lasts til the next request
	      	flash.now[:danger] = 'Invalid email/password combination'
	      	render 'new'
	    end
	end

	def destroy
		log_out
		redirect_to root_url
	end

	private

	def session_params
	    params.require(:session).permit(:email, :password)
	end
end