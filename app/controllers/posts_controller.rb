class PostsController < ApplicationController
  
  def create
  	@post = Post.new(post_params)
  	if @post.save
  		redirect_to posts_path
  	else
  		render :new
  	end
  end

  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  def new
  	@post = Post.new
  end

  private
  def post_params
  	params.require(:post).permit(:title, :author, :body)
  end

end
