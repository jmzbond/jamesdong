# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :redirect_to_www if Rails.env == "production"

  def redirect_to_www
    unless /www\.jamesdong\.com/ =~ request.url
      uri = URI.parse(request.url)
      uri.host = "www.jamesdong.com"
      redirect_to uri.to_s
    end
  end
  
end
