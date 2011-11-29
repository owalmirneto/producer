class PostsController < ApplicationController
  # why don't work before_filter ?
  before_filter :load_resources

  def index
    @posts = Post.scoped
    @posts = @posts.search(params[:search]) if params[:search]
    @posts = @category.posts if @category.present?
    # why don't work published ?
    @posts = @posts.published
    respond_with @posts
  end

  def show
    # @categories = Category.all
    @post = Post.find(params[:id])
    respond_with @post
  end

protected
  def load_resources
    @categories = Category.all
    @category = Category.find(params[:category_id]) if params[:category_id]
  end

end

