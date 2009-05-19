class CreatePorts < ActiveRecord::Migration
  def self.up
    create_table :ports do |t|
      t.integer :port_type_id
      t.integer :device_id
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :ports
  end
end
