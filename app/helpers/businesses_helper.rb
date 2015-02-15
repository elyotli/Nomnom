module BusinessesHelper

  # Logs in the given business
  def log_in(business)
    session[:business_id] = business.id
  end

end