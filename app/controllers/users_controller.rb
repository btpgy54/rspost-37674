class UsersController < ApplicationController

  def new
    @user = User.new(user_params)
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    reset_session
    redirect_to :index
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end
end
