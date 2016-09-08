# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_filters.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_filter :authenticate_admin

    def authenticate_admin
      redirect_to new_user_session_path unless current_user
    end

    # Helper method
    helper_method :current_user_session, :current_user

    private

    def current_user_session
      @current_user_session ||= UserSession.find
    end

    def current_user
      @current_user = current_user_session && current_user_session.user
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end
