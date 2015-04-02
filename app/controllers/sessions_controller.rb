class SessionsController < ApplicationController
  def index
    render('new')
  end

  def create
    owner = Owner.find_by_email(params[:email])
    if owner && owner.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = owner.auth_token
      else
        cookies[:auth_token] = owner.auth_token
      end
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to '/login', :notice => "Logged out!"
  end
end
