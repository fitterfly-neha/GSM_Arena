class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :brand_name
      t.string :device_name
      t.string :screen_size
      t.string :camera
      t.integer :battery
      t.integer :brand_id

      t.timestamps
    end
  end
end
