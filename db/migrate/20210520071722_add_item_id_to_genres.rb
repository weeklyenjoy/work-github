class AddItemIdToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :item_id, :integer
  end
end
