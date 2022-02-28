class UsersController < ApplicationController

  def edit
    
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit#入力した値などを保持したい場合に使う(redirectだと経路が違うため変更前になってしまう)
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
