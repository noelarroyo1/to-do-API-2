class ListsController < ApplicationController

  def index
    @lists = List.where(params[:id])
    render :json => @lists, each_serializer: ListSerializer
  end

end
