class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:user][:email].downcase)
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:success] = "Welcome #{@user.email}"
      redirect_to root_path
    else
      flash[:success] = "The credentials you entered are incorrect.  Please try again."
      redirect_to root_path
    end
  end


  def destroy
    reset_session
    redirect_to root_path
  end
end