class Admin::OrderedItemsController < ApplicationController
    before_action :authenticate_admin!

    
    def update
        @ordered_items = OrderedItem.find(params[:id])
        @order = @ordered_items.order
        @ordered_items.update(ordered_items_params)
        
        
        if @ordered_items.making_status == "製作中"
		   @order.update(status: :"製作中")
		   
        elsif @order.ordered_items.count ==  @order.ordered_items.where(making_status: "製作完了").count
			  @order.update(status: "発送準備中") 
			     
        end
	        redirect_to admin_order_path(@ordered_items.order.id)
    end

    private

    def ordered_items_params
        params.require(:ordered_item).permit(:making_status)
    end
end
