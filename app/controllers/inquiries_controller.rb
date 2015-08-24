class InquiriesController < ApplicationController

  def new
  end

  def create
    @message = params[:message]
    flash.notice = "Thank you for sending your message..... '#{@message}'"
    redirect_to root_url
  end

end
