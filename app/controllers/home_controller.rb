class HomeController < ApplicationController
  before_action :auth_current_user

  def index
    @img_path = @current_user.head_img_url
    @articles = @current_user.articles.page(params[:page]).per(10)
    @authority = true || @current_user.has_role?(:admin)
  end

end
