class EcategoriesController < ApplicationController

  before_action :find_ecategory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index
    @ecategories = Ecategory.all.order("created_at DESC")
  end

  def show
  end

  def new
    @ecategory = current_user.ecategories.build
  end

  def create
    @ecategory = current_user.ecategories.build(ecategory_params)
     if @ecategory.save
      redirect_to ecategories_path
     else
      render 'new'
     end
  end

  def edit
  end

  def update
    if @ecategory.update(ecategory_params)
      redirect_to ecategories_path
    else
      render 'edit'
    end
  end

  def destroy
    @ecategory.destroy
     redirect_to ecategories_path
  end

  private

  def find_ecategory
    @ecategory = Ecategory.find(params[:id])
  end

  def ecategory_params
    params.require(:ecategory).permit(:name, :ecategory_id)
  end

end
