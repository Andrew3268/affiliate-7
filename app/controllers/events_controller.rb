class EventsController < ApplicationController

  before_action :find_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :log_impression, :only=> [:show]
  load_and_authorize_resource

  def log_impression
    @event = Event.find(params[:id])
    @event.impressions.create(ip_address: request.remote_ip)
  end

  def index
    if params[:ecategory].blank?
     @events = Event.all.order("created_at DESC").page(params[:page]).per(100)
    else
      @ecategory_id = Ecategory.find_by(name: params[:ecategory]).id
      @events = Event.where(ecategory_id: @ecategory_id).order("created_at DESC").page(params[:page]).per(100)
    end
    @event_side = Event.order("impressions_count DESC").limit(5)
    @blogs = Blog.all.order("created_at DESC").limit(1)
  end

  def show
    @relative_show = @event.ecategory.events
    @event_side = Event.order("impressions_count DESC").limit(5)
    @blogs = Blog.all.order("created_at DESC").limit(1)
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)
     if @event.save
      redirect_to @event
     else
      render 'new'
     end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event.destroy
     redirect_to root_path
  end

  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:eb_title, :eb_intro, :eb_link, :eb_image, :eb_code, :eb_date, :eb_price_is, :eb_price_was, :eb_shipping,
                                 :eb_price_sale, :eb_review, :eb_youtube_01, :eb_youtube_02, :eb_ckeditor, :eb_source, :eb_expire, :eb_featured_sale,
                                 :eb_spare_01, :eb_spare_02, :eb_spare_03, :eb_spare_04, :eb_spare_05, :eb_spare_06,
                                 :eb_spare_07, :eb_spare_08, :eb_spare_09, :eb_spare_10, :eb_spare_11, :eb_spare_12,
                                 :eb_spare_13, :eb_spare_14, :eb_spare_15, :eb_spare_16, :eb_spare_17, :eb_spare_18,
                                 :eb_spare_19, :eb_spare_20, :eb_spare_21, :eb_spare_22, :eb_spare_23, :eb_spare_24,
                                 :eb_spare_25, :ecategory_id)
  end

end
