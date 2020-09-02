class ApplicationController < ActionController::Base
  #Require authentication for all pages
    before_action :authenticate_user!, except: [:home]

    # Check if role is set for login
    def after_sign_in_path_for(resource)
      root_path
    end
end
