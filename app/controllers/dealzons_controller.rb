class DealzonsController < ApplicationController

  before_action :find_dealzon, only: [:show, :edit, :update, :destroy, :deals]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :log_impression, :only=> [:show]
  load_and_authorize_resource

  def log_impression
    @dealzon = Dealzon.find(params[:id])     
    @dealzon.impressions.create(ip_address: request.remote_ip)
  end

  def index
    if params[:acategory].blank?
     @dealzons = Dealzon.all.order("created_at DESC").page(params[:page]).per(40)
    else
     @acategory_id = Acategory.find_by(name: params[:acategory]).id
     @dealzons = Dealzon.where(acategory_id: @acategory_id).order("created_at DESC").page(params[:page]).per(40)
    end
     @dealzon_side = Dealzon.order("impressions_count DESC").limit(5) 
     @blogs = Blog.all.order("created_at DESC").limit(1)
  end

  def show 
    @relative_show = @dealzon.acategory.dealzons
    @dealzon_side = Dealzon.order("impressions_count DESC").limit(5)
    @blogs = Blog.all.order("created_at DESC").limit(1)
  end

  def new
    @dealzon = current_user.dealzons.build
  end

  def create
    @dealzon = current_user.dealzons.build(dealzon_params)
     if @dealzon.save
      redirect_to @dealzon
     else
      render 'new'
     end
  end

  def edit 
  end

  def update
    if @dealzon.update(dealzon_params)
      redirect_to @dealzon
    else
      render 'edit'
    end
  end

  def destroy
    @dealzon.destroy
     redirect_to root_path
  end

  private

  def find_dealzon
    @dealzon = Dealzon.find(params[:id])
  end

  def dealzon_params
    params.require(:dealzon).permit(:am_title, :am_intro, :am_link, :am_image, :am_code, :am_date, :am_price_is, :am_price_was,
                                 :am_price_sale, :am_review, :am_category, :am_expire, :am_shipping,
                                 :am_spare_01, :am_spare_02, :am_spare_03, :am_spare_04, :am_spare_05, :am_spare_06,
                                 :am_spare_07, :am_spare_08, :am_spare_09, :am_spare_10, :am_spare_11, :am_spare_12,
                                 :am_spare_13, :am_spare_14, :am_spare_15, :am_spare_16, :am_spare_17, :am_spare_18,
                                 :am_spare_19, :am_spare_20, :am_spare_21, :am_spare_22, :am_spare_23, :am_spare_24,
                                 :am_spare_25, :acategory_id)
  end

end
