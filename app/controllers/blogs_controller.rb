class BlogsController < ApplicationController

  before_action :find_blog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :log_impression, :only=> [:show]
  load_and_authorize_resource

  def log_impression
    @blog = Blog.find(params[:id])     
    @blog.impressions.create(ip_address: request.remote_ip)
  end

  def index
    if params[:bcategory].blank?
      @blogs = Blog.all.order("created_at DESC").page(params[:page]).per(20)
    else
      @bcategory_id = Bcategory.find_by(name: params[:bcategory]).id
      @blogs = Blog.where(bcategory_id: @bcategory_id).order("created_at DESC").page(params[:page]).per(20)
    end
    @blog_side = Blog.order("impressions_count DESC").limit(5)
    @post_side = Post.order("impressions_count DESC").limit(5)
    @event_side = Event.order("impressions_count DESC").limit(5)
    @dealzon_side = Dealzon.order("impressions_count DESC").limit(5)
  end

  def show
    @blog_side = Blog.order("impressions_count DESC").limit(5) 
    @post_side = Post.order("impressions_count DESC").limit(5)
    @event_side = Event.order("impressions_count DESC").limit(5)
    @dealzon_side = Dealzon.order("impressions_count DESC").limit(5)
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
