class PagesController < ApplicationController
  def index
  end

  def home
    @posts = Post.all
    @newPost = Post.new
  end

  def profile
  	#grab the username from the url as :id
  	@username = params[:id]
    @newPost = Post.new
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]))

    @toFollow = User.all.last(5)
  end

  def explore
    @posts = Post.all
    @newPost = Post.new
    @toFollow = User.all.last(5)

  end
end
