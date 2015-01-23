class OrdersController < ApplicationController

	def menu
		@business = Business.find(params[:business_id])
		@user = User.find(params[:user_id])
		
	end

	def welcome
		
	end

end