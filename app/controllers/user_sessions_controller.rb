class UserSessionsController < ApplicationController
  before_action :require_logout, only: [:new, :create]
  before_action :require_login, only: [:destroy]

  layout 'session'

  # GET /user_session/new
  def new
    @user_session = UserSession.new
  end

  # POST /user_session
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to root_path, success: 'Logged in!'
    else
      flash.now[:warning] = 'Invalid email or password.'
      render :new
    end
  end

  # DELETE /user_session
  def destroy
    current_user_session.destroy
    redirect_to new_user_session_path, success: 'Logged out!'
  end
end
