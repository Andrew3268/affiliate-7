class AcategoriesController < ApplicationController

  before_action :find_acategory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index
    @acategories = Acategory.all.order("created_at DESC")
  end

  def show
  end
  
  def new
    @acategory = current_user.acategories.build
  end

  def create
    @acategory = current_user.acategories.build(acategory_params)
     if @acategory.save
      redirect_to root_path
     else
      render 'new'
     end
  end

  def edit
  end

  def update
    if @acategory.update(acategory_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @acategory.destroy
     redirect_to root_path
  end

  private

  def find_acategory
    @acategory = Acategory.find(params[:id])
  end

  def acategory_params
    params.require(:acategory).permit(:name, :acategory_id)
  end

end
