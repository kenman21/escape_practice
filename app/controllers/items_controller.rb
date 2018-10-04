class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    byebug
    if @item.save
      redirect_to root_path
    else
      redirect_to new_item_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :seller_id)
  end

end
