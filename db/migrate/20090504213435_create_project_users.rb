class CreateProjectUsers < ActiveRecord::Migration
  def self.up
    create_table :project_users, :id => false do |t|
      t.references :user, :project, :role
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :project_users
  end
end
