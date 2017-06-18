class UsersController < ApplicationController
  def new
  end


  def create
    @user = User.new(user_params)
    p user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      # TODO: Flash messages to inform of errors
      puts 'Error'
      redirect_to '/'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

end