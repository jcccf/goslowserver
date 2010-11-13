# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101101172536) do

  create_table "color_reflections", :force => true do |t|
    t.integer  "user_id"
    t.integer  "red"
    t.integer  "green"
    t.integer  "blue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_screens", :force => true do |t|
    t.integer  "user_id"
    t.integer  "screen_id"
    t.boolean  "entering"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photo_reflections", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "content_type"
    t.binary   "data",         :limit => 16777215
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "screens", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suggestions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "text_reflections", :force => true do |t|
    t.integer  "user_id"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "udid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
