class AddNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :text
    add_column :users, :intro, :text
    add_column :users, :image_id, :text
  end
end
