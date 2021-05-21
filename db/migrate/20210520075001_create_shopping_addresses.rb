class CreateShoppingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_addresses do |t|
      t.integer :customer_id
      t.string :name
      t.string :postal_code
      t.string :address

      t.timestamps
    end
  end
end
