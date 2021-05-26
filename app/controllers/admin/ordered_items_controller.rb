class Admin::OrderedItemsController < ApplicationController
    def update
        @ordered_items = OrderedItem.find(params[:id])
        @ordered_items.update(ordered_items_params)
        redirect_to admin_order_path(@ordered_items.order.id)
    end

     private

  def ordered_items_params
    params.require(:ordered_item).permit(:making_status)
  end
end
