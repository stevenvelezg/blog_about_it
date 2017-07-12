class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  before_action :markdown_renderer



  private

  def markdown_renderer
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true, superscript: true, underline: true, quote: true)
  end

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
