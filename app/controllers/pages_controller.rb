class PagesController < ApplicationController
  def home
    if current_user
            if current_user.role.admin?
            redirect_to  vehicles_path
          elsif current_user.role.user?
            redirect_to user_vehicles_path(current_user.id)
            end
      else
        redirect_to new_user_session_path
      end
  end
end
