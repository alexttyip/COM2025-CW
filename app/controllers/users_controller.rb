class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def index
  end

  private def set_user
    @params = params
    @username = params[:username]
    if !params.has_key?(:username)
      redirect_to root_path
    elsif current_user.username == params[:username]
      @user = current_user
      @is_self = true
    else
      @user = User.where(username: params[:username])[0]
      @is_self = false
    end
  end
end
