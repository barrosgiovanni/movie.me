class UsersController < ApplicationController
  private

  def user_params
    params.require(:user).permit(:id, :email, :photo)
  end
end
