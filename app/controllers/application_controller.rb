class ApplicationController < ActionController::Base
  impersonates :user
  protect_from_forgery with: :exception


  def auth_current_user
    authenticate_user!
    @current_user = current_user
  end

end
