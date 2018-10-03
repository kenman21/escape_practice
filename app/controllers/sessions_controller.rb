class SessionsController < ApplicationController
  helper_method :logged_in?

  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

  def logged_in?
    !!current_user
  end

  def current_user
    if (session[:user_id])
       @user = User.find(:user_id)
    end
  end

end
