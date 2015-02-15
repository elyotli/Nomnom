class SessionsController < ApplicationController
	include SessionsHelper

	def new

	end

	def create #login POST
		business = Business.find_by(email: params[:session][:email].downcase)
	    if business && business.authenticate(params[:session][:password])
	    	log_in business
	    	redirect_to business #this calls business_url(business)
	    else
	      	# flash lasts, flast.now only lasts til the next request
	      	flash[:danger] = 'Invalid email/password combination'
	      	render 'new'
	    end
	end

	def destroy
	end

end