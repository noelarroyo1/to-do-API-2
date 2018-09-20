class Api::ItemsController < ApiController
  before_action :authenticated?

  def index
    @items = Item.all
    render :json => @items, each_serializer: ItemSerializer
  end

end
