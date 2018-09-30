class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
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
                                 :post_spare_25)
  end
  
end

