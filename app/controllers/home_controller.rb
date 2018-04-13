class HomeController < ApplicationController
  before_action :auth_current_user

  def index
    @q = @current_user.articles.ransack(params[:q])
    @img_path = @current_user.head_img_url
    @articles = @q.result.page(params[:page]).per(10)
    @authority = @current_user.has_role?(:admin)
  end

end
