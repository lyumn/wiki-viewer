class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_charsets 

# Configuring charset to UTF-8 
def configure_charsets 
   headers["Content-Type"] = "text/html; charset=UTF-8"     
end 
end
