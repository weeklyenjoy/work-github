class Admin::OrderdItemsController < ApplicationController
    def update
        @ordered_items = OrderedItem(ordered_items_paramas)
        @ordered_items.update
        redirect_to admin_order_path
    end

     private

  def ordered_items_params
    params.require(:ordered_item).permit(:makign_status)
  end
end
