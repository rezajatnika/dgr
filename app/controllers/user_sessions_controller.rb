class UserSessionsController < ApplicationController
  # GET /user_sessions/new
  def new
    @user_session = UserSession.new
  end

  # POST /user_sessions
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to root_path, success: 'Logged in!'
      logger.info "Logged in: #{params[:user_session][:email]}"
    else
      flash.now[:alert] = 'Invalid email or password.'
      logger.info "Invalid login: #{params[:user_session][:email]}"
      render :new
    end
  end
end
