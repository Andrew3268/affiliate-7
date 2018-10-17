class BcategoriesController < ApplicationController

  before_action :find_bcategory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index 
    @bcategories = Bcategory.all.order("created_at DESC")
  end

  def show
  end

  def new
    @bcategory = current_user.bcategories.build
  end

  def create
    @bcategory = current_user.bcategories.build(bcategory_params)
     if @bcategory.save
      redirect_to bcategories_path
     else
      render 'new'
     end
  end

  def edit
  end

  def update
    if @bcategory.update(bcategory_params)
      redirect_to bcategories_path
    else
      render 'edit'
    end
  end

  def destroy
    @bcategory.destroy
     redirect_to bcategories_path
  end

  private

  def find_bcategory
    @bcategory = Bcategory.find(params[:id])
  end

  def bcategory_params
    params.require(:bcategory).permit(:name, :bcategory_id)
  end
end
