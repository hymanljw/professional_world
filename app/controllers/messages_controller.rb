class MessagesController < ApplicationController

  def index

  end

  def new
    @message = ""
  end

  def create
    Rails.logger.info "-----------------------------------------------"
    Rails.logger.info params[:body]
    Rails.logger.info "-----------------------------------------------"
  end

end
