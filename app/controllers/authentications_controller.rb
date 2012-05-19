class AuthenticationsController < ApplicationController
  def create
    auth = request.env["rack.auth"]
    logger.info auth
    user = User.find_or_create_by_provider_and_uid(auth)
    sign_in(user)
    redirect_to root_pa th, :notice => "Authentication successful."
  end

  def destroy
    #@authentication = current_user.authentications.find(params[:id])
    #@authentication.destroy
    #flash[:notice] = "Successfully destroyed authentication."
    #redirect_to authentications_url
  end
end