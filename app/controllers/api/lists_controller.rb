class Api::ListsController < ApiController
  before_action :authenticated?

  def index
    @lists = List.all
    render :json => @lists, each_serializer: ListSerializer
  end

end
