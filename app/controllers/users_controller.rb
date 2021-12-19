class UsersController < ApplicationController
  def index
    @tweet = Tweet.new
    @users = User.all
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets.order(created_at: :desc)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
end

private

 def user_params
   params.require(:user).permit(:name, :profile_image)
 end
