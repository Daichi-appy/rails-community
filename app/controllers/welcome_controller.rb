class WelcomeController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
    @like  = Like.new
  end
end
