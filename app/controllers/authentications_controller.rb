class AuthenticationsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    logger.info "OmniAuth#{auth}"
    user = User.find_or_create_by_provider_and_uid(auth)
    sign_in(user)
    redirect_to root_path, :notice => "Authentication successful."
  end

  def signout
    reset_session
    # redirect back here
    redirect_to request.referer || root_path, :notice => "Signed out!"
  end

  def destroy
    #@authentication = current_user.authentications.find(params[:id])
    #@authentication.destroy
    #flash[:notice] = "Successfully destroyed authentication."
    #redirect_to authentications_url
  end
end