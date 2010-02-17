class CurrentItemsController < ApplicationController
  before_filter :load_item_and_list
  def get
  end

  def complete
    @list.complete_current_item
    flash[:notice] = "Item completed"
    redirect_to buttons_lists_path
  end

protected

  def load_item_and_list
    @list = List.find(params[:list_id])
    @current_item  = @list.get_current_item
  end
end