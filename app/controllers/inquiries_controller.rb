class InquiriesController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.create(inquiry_params)

    if (@inquiry.valid?)
      InquiryMailer.inquiry_email(@inquiry).deliver_now
      flash.notice = "Thank you for sending your message..... '#{params[:name]}'"
      redirect_to root_url
    else
      flash[:notice] = "Sorry, this has not been submitted, #{@inquiry.name}"
      render :new
    end
  end

  private

  def inquiry_params
    params.require(:inquiry).permit( :name, :email, :subject, :message )
  end

end
