class BlogsController < ApplicationController

  before_action :find_blog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index
    if params[:bcategory].blank?
      @blogs = Blog.all.order("created_at DESC")
    else
      @bcategory_id = Bcategory.find_by(name: params[:bcategory]).id
      @blogs = Blog.where(bcategory_id: @bcategory_id).order("created_at DESC")
    end
  end

  def show 
  end

  def new
    @blog = current_user.blogs.build
  end

  def create
    @blog = current_user.blogs.build(blog_params)
     if @blog.save
      redirect_to @blog
     else
      render 'new'
     end
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to @blog
    else
      render 'edit'
    end
  end

  def destroy
    @blog.destroy
     redirect_to root_path
  end

  private

  def find_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:blog_title, :blog_writer, :blog_date, :blog_intro, :blog_image, 
                                 :blog_ckeditor, :bcategory_id)
  end

end
