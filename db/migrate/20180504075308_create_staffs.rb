class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.text :name
      t.text :store_id
      t.text :image_id
      t.text :introduction

      t.timestamps
    end
  end
end
