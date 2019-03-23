class StartListsController < ApplicationController
  def index
    @start_lists = StartList.all
  end

  def show
    @start_list = StartList.find(params[:id])
  end
end
