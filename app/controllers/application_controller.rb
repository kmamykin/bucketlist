class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :signed_in?, :current_user, :admin?, :can_edit?

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

  def admin?
    signed_in? && current_user.provider == "twitter" && (current_user.uid == "46238620" || current_user.uid == "14999406")
  end

  def can_edit?(experience)
    return false unless signed_in?
    admin? || experience.user == current_user
  end

end
