class VisitsController < ApplicationController
	
	def index
		@business = Business.find(params[:business_id])
		@visits = @business.visits
	end

	def new
	end

	def create
		@user = User.find_or_initialize_by(first_name: params[:name], phone: params[:phone])
		@business = Business.find(params[:business_id])
		@visit = Visit.new(user: @user, business: @business)
		if @user.save! && @visit.save!
			redirect_to business_url(@business), notice: "Thanks! We will text you the menu shortly"
		else
			redirect_to business_url(@business), alert: "Something's wrong"
		end
	end

	def edit #get

	end

	def update

	end

	private

	def visit_params
		params.permit(:name, :phone, :business_id)
	end

end