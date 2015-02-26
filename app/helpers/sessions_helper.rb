module SessionsHelper

  # Logs in the given business
  def log_in(business)
    session[:business_id] = business.id
  end

  def log_out
    session.delete(:business_id)
    @current_user = nil
  end

  # Returns the current logged-in user (if any).
  def current_business
    @current_business ||= Business.find_by(id: session[:business_id])
    #find_by: Rather than raising an exception, this method returns nil (indicating no such user) if the id is invalid.
    #Because a User object is true in a boolean context, the call to find_by only gets executed if @current_user hasn’t yet been assigned.
  end

  def logged_in?
    !current_business.nil?
  end
end