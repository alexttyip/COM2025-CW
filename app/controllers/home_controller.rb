class HomeController < ApplicationController
  def home
    if user_signed_in?
      redirect_to users_path(current_user.username)
    end
  end

  def contact
  end

  def tree_map
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]
    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    else
      # Send an email
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end
    redirect_to root_path
  end
end
