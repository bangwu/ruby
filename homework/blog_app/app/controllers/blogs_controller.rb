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
    if @blog.save
      redirect_to @blog
    else
      render 'new'
    end
  end

  def show
    respond_with(@blog)
  end

  def destroy
    @blog.delete
    redirect_to blogs_path
  end

  def update
    if @blog.update(blog_params)
      redirect_to @blog
    else
      render 'edit'
    end
    #redirect_to(blogs_path)
  end

  private
  def set_blog
    @blog = Blog.find_by_id(params[:id])
  end
  def blog_params
    params.require(:blog).permit(:id, :title, :content)
  end
end
