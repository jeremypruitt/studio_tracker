# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090504213902) do

  create_table "cable_types", :force => true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cables", :force => true do |t|
    t.string   "inventory_number"
    t.integer  "cable_type_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "connections", :id => false, :force => true do |t|
    t.integer  "track_id"
    t.integer  "port_id"
    t.integer  "cable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "device_types", :force => true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", :force => true do |t|
    t.string   "inventory_number"
    t.string   "model"
    t.integer  "manufacturer_id"
    t.integer  "device_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "port_types", :force => true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ports", :force => true do |t|
    t.integer  "port_type_id"
    t.integer  "device_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_users", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "role_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.datetime "start"
    t.datetime "end"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "session_songs", :id => false, :force => true do |t|
    t.integer  "session_id"
    t.integer  "song_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "session_users", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "session_id"
    t.integer  "role_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "name"
    t.datetime "start"
    t.datetime "end"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", :force => true do |t|
    t.string   "name"
    t.boolean  "promoted"
    t.integer  "project_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", :force => true do |t|
    t.string   "name"
    t.boolean  "promoted"
    t.integer  "session_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "display_name"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
