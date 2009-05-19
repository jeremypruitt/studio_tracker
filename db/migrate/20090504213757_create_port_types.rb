class CreatePortTypes < ActiveRecord::Migration
  def self.up
    create_table :port_types do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :port_types
  end
end
