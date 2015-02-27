class OrdersController < ApplicationController

	def new
		@business = Business.find(params[:business_id])
		@user = User.find(params[:user_id])
		
	end

	def create
		
	end

	def edit #get

	def update

	end

end