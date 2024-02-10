class ApplicationController < ActionController::Base

    #Define helper methods accessible in views
    helper_method :current_user, :logged_in?

    #Returns the currently logged-in user or nil if none
    def current_user
      return unless session[:user_id]
    
      begin
        @current_user ||= User.find(session[:user_id])
      rescue ActiveRecord::RecordNotFound
        session.delete(:user_id)  # Clear the invalid user_id from session
        nil  # You can redirect to login or show a message if needed
      end
    end

    def logged_in?
      current_user.present?
    end
      
    # Redirects to login page if user is not logged in
    def require_user
      if !logged_in?
          flash[:alert] = "Please sign in to perform this action"
          redirect_to login_path
      end
    end
end
