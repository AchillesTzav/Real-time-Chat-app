class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]
  def new
  end


  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in"
      redirect_to root_path
    else
      flash[:error] = "There was somthing wrong with your login information"
      redirect_to login_path
    end
  end


  def destroy
    session.clear
    #session[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to login_path
  end

  private

  def logged_in_redirect
    if logged_in?
      flash[:error] = "You are already logged in"
      redirect_to root_path
    end
  end



end
