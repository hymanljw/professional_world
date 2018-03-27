class PersonalsController < ApplicationController
  before_action :auth_current_user
  before_action :require_admin!,only: [:impersonate,:stop_impersonating]

  def index

  end

  def edit

  end

  def update
    flag = @current_user = @current_user.update_attributes(personal_params)
    redirect_to root_path
  end

  def identity
    @users = User.page(params[:page]).per(20)
  end

  def impersonate
    user = User.find(params[:id])
    impersonate_user(user)
    redirect_to root_path
  end

  def stop_impersonating
    stop_impersonating_user
    redirect_to root_path
  end

  private

  def require_admin!
    render 'forbidden/index', status: :forbidden unless true || true_user.has_role?(:admin)
  end

  def personal_params
    params.require(:user).permit!
  end


end
