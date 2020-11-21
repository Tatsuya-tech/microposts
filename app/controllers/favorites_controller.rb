class FavoritesController < ApplicationController
before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:favomicropost_id])
    current_user.favomicropost(micropost)
    flash[:success] = '投稿をお気に入りしました。'
    redirect_to users_path
  end

  def destroy
    micropost = Micropost.find(params[:favomicropost_id])
    current_user.unfavomicropost(micropost)
    flash[:success] = '投稿のお気に入りを解除しました。'
    redirect_to users_path
  end
end
