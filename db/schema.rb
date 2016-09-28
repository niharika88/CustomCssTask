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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160925083001) do

  create_table "styles", force: :cascade do |t|
    t.string   "background_color"
    t.string   "block_height"
    t.string   "name_color"
    t.string   "name_style"
    t.string   "name_size"
    t.string   "text_color"
    t.string   "text_style"
    t.string   "text_size"
    t.string   "email_color"
    t.string   "email_style"
    t.string   "email_size"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.string   "logo"
    t.string   "css"
    t.index ["user_id"], name: "index_styles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
