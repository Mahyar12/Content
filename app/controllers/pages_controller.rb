class PagesController < ApplicationController
  layout 'application', :except => [:home, :social_home]

  def home
    @menu = 'home'
    render layout: 'application'
  end

  def about_us
    @menu = 'about'
    render layout: 'home'
  end

  def contact
    @menu = 'contact'
    render layout: 'application'
  end

  def social_home; ; end


  def headers

  end

  def contact_us
    # if no email address
    if params[:email].blank? || params[:email].index('@').blank?
      flash[:alert] = "Please fill in the correct email."
    # if no message
    elsif params[:message].blank?
      flash[:alert] = "Please fill in the message."
    # else send email if not a spambot (user must have javascript enabled)
    else
      contact = params
      Mailer.contact_us(contact).deliver
      flash[:notice] = "Email successfully sent"
    end

    redirect_to root_path
  end

end

