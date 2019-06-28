class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save

    redirect_to posts_path(@post)

    #Post.create(title: params[:post][:title], description: params[:post][:description])
  end

  def new
    @post = Post.new
  end

  def navigate
    :show
  end

  # add create method here
  


end
