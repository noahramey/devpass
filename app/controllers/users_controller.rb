class UsersController < ApplicationController
  before_action :authorize, only: [:vault]
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end


  def vault
    @user = User.find(session[:user_id])
    render :vault
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
