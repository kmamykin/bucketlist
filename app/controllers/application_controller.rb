class ApplicationController < ActionController::Base
  protect_from_forgery

  def sign_in(user)
    session['user_id'] = user.id
  end

  def signed_in?
    session['user_id'].present?
  end

  def current_user
    nil unless signed_in?
    User.find(session['user_id'])
  end
end
