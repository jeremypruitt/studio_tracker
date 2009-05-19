class CreateSessionSongs < ActiveRecord::Migration
  def self.up
    create_table :session_songs, :id => false do |t|
      t.references :session, :song
      t.timestamps
    end
  end

  def self.down
    drop_table :session_songs
  end
end
