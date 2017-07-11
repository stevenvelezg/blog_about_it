class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  private

  def current_user
    begin
      @current_user = session[:user_id] ? User.find(session[:user_id]) : nil
    rescue
      session[:user_id] = nil
    end
  end

  def verify_login
    redirect_to '/' unless @current_user
  end
end
