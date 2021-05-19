class Admin::ItemsController < ApplicationController
<<<<<<< HEAD

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_items_path
  end

  def show
  end

  def edit
  end

  def update
  end

  private
  def item_params
    params.require(:item).permit(:name, :caption, :tax_out_price, :image)
  end

=======
>>>>>>> 622e1b4caada880051b0099149eab0c330a0e59f
end
