class CreateConnections < ActiveRecord::Migration
  def self.up
    create_table :connections, :id => false do |t|
      t.references :track, :port, :cable

      t.timestamps
    end
  end

  def self.down
    drop_table :connections
  end
end
