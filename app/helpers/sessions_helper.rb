module SessionsHelper
  def log_in(user)
    sessions[:user_id] = user_id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
