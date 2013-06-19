# coding: utf-8
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def facebook
    oauth_data = request.env["omniauth.auth"]
    @user = User.find_or_initialize_by_email(oauth_data.extra.raw_info.email)
    @user.assign_attributes(password: Devise.friendly_token[0,20]) if @user.new_record?
    @user.save
    # sign_in @user
    sign_in_and_redirect @user
  end
end
