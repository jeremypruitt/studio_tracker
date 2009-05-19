class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.string :name
      t.boolean :promoted
      t.integer :project_id
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :songs
  end
end
