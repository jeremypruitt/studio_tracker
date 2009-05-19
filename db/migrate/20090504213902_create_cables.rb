class CreateCables < ActiveRecord::Migration
  def self.up
    create_table :cables do |t|
      t.string :inventory_number
      t.integer :cable_type_id
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :cables
  end
end
