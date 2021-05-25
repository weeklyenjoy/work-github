class ChangeOrderdItemsToOrderedItems < ActiveRecord::Migration[5.2]
  def change
    rename_table :orderd_items, :ordered_items
  end
end
