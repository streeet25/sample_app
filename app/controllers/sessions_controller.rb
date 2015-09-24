class SessionsController < ApplicationController

  def new
  end

  def create
<<<<<<< HEAD
    user = User.find_by(params[:email].downcase)
    if user && user.authenticate(params[:password])
      sign_in user
      redirect_to user, :notice => "Logged in!"
=======
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
<<<<<<< HEAD
      redirect_to user
>>>>>>> sign-in-out
=======
      redirect_back_or user
>>>>>>> updating-users
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
<<<<<<< HEAD
    redirect_to root_url, :notice => "Logged out!"
=======
    redirect_to root_url
>>>>>>> sign-in-out
  end
end