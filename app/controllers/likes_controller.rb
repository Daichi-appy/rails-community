class LikesController < ApplicationController

  def create
    @like = Like.new(user_id: current_user.id, post_id: params[:post.id])
    redirect_to root_path, notice: "いいねしました"
  end

  def destroy
    @like = like.find_by(user_id: current_user.id, post_id: params[:post.id])
    @like.destroy
    redirect_to root_path, notice: "いいねを解除しました"
  end
end
