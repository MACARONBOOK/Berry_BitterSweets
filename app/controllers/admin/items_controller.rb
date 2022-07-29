class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_item_path(@item)
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.page(params[:page])
    # (全-件)のcount
    @items_count = Item.where(sales_status:"sale").count
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admin_item_path(@item)
    else
      render :edit
    end
  end


  private
  def item_params
    params.require(:item).permit(:name, :introduction, :genre_id, :price, :sales_status, :image)
  end
end
