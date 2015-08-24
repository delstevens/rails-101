class InquiriesController < ApplicationController

  def new
  end

  def create
    inquiry = Inquiry.create(inquiry_params)

    InquiryMailer.inquiry_email(inquiry).deliver_now

    @message = params[:name]
    flash.notice = "Thank you for sending your message..... '#{@message}'"
    redirect_to root_url
  end

  private

  def inquiry_params
    params.require(:inquiry).permit( :name, :email, :subject, :message )
  end

end
