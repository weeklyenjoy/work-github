class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.string :postal_code
      t.integer :billing_amount
      t.integer :shipping_cost
      t.integer :payment_method
      t.integer :status

      t.timestamps
    end
  end
end
