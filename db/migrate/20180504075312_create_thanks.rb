class CreateThanks < ActiveRecord::Migration[5.1]
  def change
    create_table :thanks do |t|
      t.integer :user_id
      t.integer :store_id
      t.integer :staff_id
      t.integer :gochi_id
      t.text :opinion

      t.timestamps
    end
  end
end
