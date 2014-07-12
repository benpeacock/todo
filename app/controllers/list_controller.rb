class ListController < ApplicationController
  before_action :set_list, only: [:destroy, :show, :update]
  def index
    @lists = List.all
  end

  def create
    @list = List.create(list_params)
  end

  def update
    #@list = List.find_by(params[:id])
    @list = List.update(list_params)
    #@event = Event.update(event_params)
  end

  def destroy
  end

  def show
  end

  private

  def set_list
    @list = List.find_by(params[:id])
  end

  def list_params
      params.permit(:name, :user_id, :permissions)
  end

end
