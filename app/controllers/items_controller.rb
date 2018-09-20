class ItemsController < ApplicationController

  def index
    @items = Item.where(params[:id])
    render :json => @items, each_serializer: ItemSerializer
  end

end
