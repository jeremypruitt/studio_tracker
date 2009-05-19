class CreateCableTypes < ActiveRecord::Migration
  def self.up
    create_table :cable_types do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :cable_types
  end
end
