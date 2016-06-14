class EnquiriesController < ApplicationController
  def new
    @enquiry = Enquiry.new
  end

  def index
    @enquiry = Enquiry.new
    render :template => "enquiries/new"
  end

  def create
    @enquiry = Enquiry.new( params.require(:enquiry).permit(:name, :email, :phone, :message) )
    if @enquiry.save
      redirect_to :back, notice: 'Your message has been sent.'
    elsif
      flash[:notice] = 'There are errors in your form'
      render :new
    end
  end
end
