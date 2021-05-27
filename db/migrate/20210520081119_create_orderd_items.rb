class CreateOrderdItems < ActiveRecord::Migration[5.2]
  def change
    create_table :orderd_items do |t|
      t.integer :order_id
      t.integer :item_id
      t.integer :making_status
      t.integer :tax_in_price
      t.integer :volume

      t.timestamps
    end
  end
end
