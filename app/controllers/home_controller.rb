class HomeController < ApplicationController
  before_action :auth_current_user

  def index
    @img_path = @current_user.head_img_url
    @articles = @current_user.articles.page(1).per(10)
  end

end
