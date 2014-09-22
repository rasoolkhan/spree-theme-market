class AdminController < ApplicationController 
  # http_basic_authenticate_with name: "tracy", password: "super_secure"
  before_action :authenticate!
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user
  
  private
  def authenticate!
    redirect_to login_url unless current_user
  end
end
