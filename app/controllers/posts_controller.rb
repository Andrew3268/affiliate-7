class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :log_impression, :only=> [:show]
  load_and_authorize_resource

  def log_impression
    @post = Post.find(params[:id])
    @post.impressions.create(ip_address: request.remote_ip)
  end

  def index
    if params[:category].blank?
      @posts = Post.all.order("created_at DESC").page(params[:page]).per(30)
    else
      @category_id = Category.find_by(name: params[:category]).id
      @posts = Post.where(category_id: @category_id).order("created_at DESC").page(params[:page]).per(30)
    end
    @post_side = Post.order("impressions_count DESC").limit(5)
    @blogs = Blog.all.order("created_at DESC").limit(1)
  end

  def show
    @relative_show = @post.category.posts
    @post_side = Post.order("impressions_count DESC").limit(5)
    @blogs = Blog.all.order("created_at DESC").limit(1)
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
     if @post.save
      redirect_to @post
     else
      render 'new'
     end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
     redirect_to root_path
  end

  def upvote
    @post.upvote_by current_user
     redirect_to :back
  end

  def downvote
    @post.downvote_by current_user
     redirect_to :back
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:post_title, :post_intro, :post_link, :post_image, :post_price_is, :post_price_was,
                                 :post_price_sale, :post_youtube_01, :post_youtube_02, :post_review, :post_source,
                                 :post_spare_01, :post_spare_02, :post_spare_03, :post_spare_04, :post_spare_05, :post_spare_06,
                                 :post_spare_07, :post_spare_08, :post_spare_09, :post_spare_10, :post_spare_11, :post_spare_12,
                                 :post_spare_13, :post_spare_14, :post_spare_15, :post_spare_16, :post_spare_17, :post_spare_18,
                                 :post_spare_19, :post_spare_20, :post_spare_21, :post_spare_22, :post_spare_23, :post_spare_24,
                                 :post_spare_25, :category_id)
  end
  
end

