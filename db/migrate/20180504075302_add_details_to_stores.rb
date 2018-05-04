class AddDetailsToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :name, :text
    add_column :stores, :intro, :text
    add_column :stores, :image_id, :text
  end
end
