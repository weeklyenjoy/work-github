class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :genre_id
      t.string :name
      t.text :caption
      t.integer :tax_out_price
      t.string :image_id
      t.boolean :is_active, default: true , null: false

      t.timestamps
    end
  end
end
