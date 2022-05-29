class SessionsController < ApplicationController
  def googleAuth
    user = User.from_omniauth(auth)
    # log_in(user)
    # Refresh_token to request new access_token
    # Note: Refresh_token is only sent once during the first request
    # refresh_token = access_token.credentials.refresh_token
    # @user.google_refresh_token = refresh_token if refresh_token.present?
    session[:user_id] = user.id
    # Access_token is used to authenticate request made from the rails application to the google server
    # user.google_token = access_token.credentials.token
    user.save
    redirect_to root_path
  end
  private
  def auth
    # Get access tokens from the google server
    request.env['omniauth.auth']
  end
end
