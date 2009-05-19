class CreateTracks < ActiveRecord::Migration
  def self.up
    create_table :tracks do |t|
      t.string :name
      t.boolean :promoted
      t.integer :session_id
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :tracks
  end
end
