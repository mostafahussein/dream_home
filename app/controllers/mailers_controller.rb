class MailersController < ApplicationController
  
  def new
    @mailer = Mailer.new
  end
  
  def create
    @mailer = Mailer.new(params[:mailer])
    if @mailer.save
      flash[:success] = "Mail Sent!"
      redirect_to root_path
    else
      render 'new'
    end
  end
end
