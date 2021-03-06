class GadgetsController < ApplicationController

  before_action :find_gadgets, only: [:show, :edit, :update, :destroy]

  def index
    @gadgets = Gadget.all.order("created_at DESC")
  end

  def show
  end

  def new
    @gadget = Gadget.new
  end

  def create
    @gadget = Gadget.new(gadget_params)
      if @gadget.save
        redirect_to @gadget
      else
        render 'new'
      end
  end

  def edit
  end

  def update
    if @gadget.update(gadget_params)
      redirect_to @gadget
    else
      render 'edit'
    end
  end

  def destroy
    @gadget.destroy
      redirect_to root_path
  end

  private

  def find_gadgets
    @gadget = Gadget.find(params[:id])
  end

  def gadget_params
    params.require(:gadget).permit(:title, :link, :description)
  end

end
