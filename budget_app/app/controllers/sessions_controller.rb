class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:new, :create]

  def new
    redirect_to root_path if logged_in?
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      login(user)
      redirect_to root_path
    else
      flash[:danger] = 'Invalid email/password combination'
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to login_path
  end

end
