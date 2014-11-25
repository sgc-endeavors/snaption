class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Thanks for registering #{@user.email}"
      redirect_to root_path
    else
      render :new
    end
  end




  private

  def allowed_params
    params.require(:user).permit(
      :email,
      :password
    )

  end



end