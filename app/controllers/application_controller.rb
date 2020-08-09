class ApplicationController < ActionController::Base
  def authorised_user(session_id, user_id)
    if session_id == user_id
      shoe_path(user_id)
    else
      render plain: 'Not authrorised to view this page'
    end
  end
end
