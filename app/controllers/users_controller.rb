class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new params.require(:user).permit(:email, :password, :password_confirmation, :location)
    if @user.save
      # sign in
      session[:user_id] = @user.id
      # redirect
      redirect_to root_path, notice: "Thank for signing up with The Impeccable Cup!"
    else
      render :new
    end

  end
end
