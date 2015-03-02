class VisitsController < ApplicationController

	def new
		@business = Business.find(session[:business_id])
		@user = User.find(params[:user_id])
		
	end

	def create
		
	end

	def index
		@business = Business.find(session[:business_id])
		@visits = @business.visits
	end

	def edit #get

	end

	def update

	end

end