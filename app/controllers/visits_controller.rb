class VisitsController < ApplicationController
	
	def index
		@business = Business.find(params[:business_id])
		@visits = @business.visits
	end

	def new
		@business = Business.find(params[:business_id])
		@user = User.find_or_create_by(params[:user_id])
		
	end

	def create
		#after user has registered at the queue
		#create a visit object
		#message the user with the menu
		
	end

	def edit #get

	end

	def update

	end

	private

	def visit_params

	end

end