class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(session_params[:email])
    if user && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to admin_items_path, notice: "Logged In!"
    else
      flash.now.alert = "Invalid email or password"
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to items_url, notice: "Logged Out"
  end
  
  protected
  
  def session_params 
    params.require(:session).permit(:email, :password, :password_confirmation)
  end
end