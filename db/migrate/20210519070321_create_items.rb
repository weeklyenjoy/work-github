class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :genre_id, null: false, default: ""
      t.string :name, null: false, default: ""
      t.text :caption, null: false, default: ""
      t.integer :tax_out_price, null: false, default: ""
      t.string :image_id, null: false, default: ""
      t.boolean :is_active, null: false, default: "TRUE"

      t.timestamps
    end
  end
end
