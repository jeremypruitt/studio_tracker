class CreateSessionUsers < ActiveRecord::Migration
  def self.up
    create_table :session_users, :id => false do |t|
      t.references :user, :session, :role
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :session_users
  end
end
