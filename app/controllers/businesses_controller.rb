class BusinessesController < ApplicationController
	include SessionsHelper

	def show
  		if logged_in?
    		@business = @current_business
		else
			redirect_to login_url
		end
	end

	def new
		@business = Business.new
	end

	def create #post to create business
		@business = Business.new(business_params)
		@business.save!
		session[:business_id] = @business.id
		redirect_to business_url(id: @business.id)
	end

	def edit #edit details

	end

	def destroy

	end

	private

	def business_params
	    params.require(:business).permit(:name, :email, :password)
	    # params.permit(:business)
	end
end