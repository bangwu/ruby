class BlogsController < ApplicationController
  before_action :set_blog, only: [:edit, :show, :destroy,:update]
  respond_to :html

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    respond_with(@blog)
  end

  def show
    respond_with(@blog)
  end

  def destroy
    @blog.delete
    redirect_to blogs_path
  end

  def update
    @newblog = Blog.new(blog_params)
    @blog.title=@newblog.title
    @blog.content=@newblog.content
    @blog.save
    redirect_to(blogs_path)
  end

  private
  def set_blog
    @blog = Blog.find_by_id(params[:id])
  end
  def blog_params
    params.require(:blog).permit(:id, :title, :content)
  end
end
