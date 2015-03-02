class VisitsController < ApplicationController
	
	def index
		@business = Business.find(params[:business_id])
	end

	def new
		@business = Business.find(params[:business_id])
		@user = User.find_or_create_by(params[:user_id])
		
	end

	def create
		
	end

	def edit #get

	end

	def update

	end

end