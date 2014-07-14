class UsersController < ApplicationController
  #in monban there is an auto requirement that users be logged in so in this case need to specify skip login
  skip_before_action :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)

    if @user.valid?
      sign_in(@user)
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def show
    @user = User.find_by(username: params[:id])
    @shouts = @user.shouts
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :username)
  end
end

