class HomeController < ApplicationController
  def home
    if user_signed_in?
      redirect_to users_path(current_user.username)
    end
  end
end
