class CreateDevices < ActiveRecord::Migration
  def self.up
    create_table :devices do |t|
      t.string :inventory_number
      t.string :model
      t.integer :manufacturer_id
      t.integer :device_id
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :devices
  end
end
