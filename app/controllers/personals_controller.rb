class PersonalsController < ApplicationController
  before_action :auth_current_user

  def index

  end

  def edit

  end

  def update
    flag = @current_user = @current_user.update_attributes(personal_params)
    redirect_to root_path
  end

  private
  def personal_params
    params.require(:user).permit!
  end


end
