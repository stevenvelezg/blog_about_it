class SessionController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.password == params[:password]
      flash[:notice] = "Hi #{@user.fname}!"
      session[:user_id] = @user.id
      redirect_to home_path
    else
      flash[:notice] = "We were not able to authenticate you"
      redirect_to home_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] ="You been logged out, #{@current_user.fname}"
    redirect_to home_path
  end
end
