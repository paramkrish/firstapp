class PostsController < ApplicationController


  def new
    @post = Post.new
  end

  def create
    @post = Post.new(user_params)
    if @post.save
      redirect_to posts_path, :notice => "New Post created"
    else
      render "new"
    end
  end


  def edit
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    #if @post.update_attributes(:name => "New") 
    if @post.update_attributes(user_params)
      flash[:success] = "Your post is Updated."
      redirect_to post_path
    else
      render "edit"
    end

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "That Post is deleted."
  end

  def user_params
    params.require(:post).permit(:name)
  end

end
