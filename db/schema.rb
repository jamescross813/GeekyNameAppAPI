# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_27_034658) do

  create_table "availabilities", force: :cascade do |t|
    t.string "date"
    t.string "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "date_infos", force: :cascade do |t|
    t.integer "day"
    t.integer "month"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_availabilities", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "availability_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["availability_id"], name: "index_event_availabilities_on_availability_id"
    t.index ["event_id"], name: "index_event_availabilities_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.integer "group_id", null: false
    t.string "event_name"
    t.string "description"
    t.string "est_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_events_on_group_id"
  end

  create_table "friend_groups", force: :cascade do |t|
    t.integer "friend_id", null: false
    t.integer "group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["friend_id"], name: "index_friend_groups_on_friend_id"
    t.index ["group_id"], name: "index_friend_groups_on_group_id"
  end

  create_table "friends", force: :cascade do |t|
    t.string "user_id_one"
    t.string "user_id_two"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "group_availabilities", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "availability_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["availability_id"], name: "index_group_availabilities_on_availability_id"
    t.index ["group_id"], name: "index_group_availabilities_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "group_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_availabilities", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "availability_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["availability_id"], name: "index_user_availabilities_on_availability_id"
    t.index ["user_id"], name: "index_user_availabilities_on_user_id"
  end

  create_table "user_events", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_user_events_on_event_id"
    t.index ["user_id"], name: "index_user_events_on_user_id"
  end

  create_table "user_groups", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_user_groups_on_group_id"
    t.index ["user_id"], name: "index_user_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "event_availabilities", "availabilities"
  add_foreign_key "event_availabilities", "events"
  add_foreign_key "events", "groups"
  add_foreign_key "friend_groups", "friends"
  add_foreign_key "friend_groups", "groups"
  add_foreign_key "group_availabilities", "availabilities"
  add_foreign_key "group_availabilities", "groups"
  add_foreign_key "user_availabilities", "availabilities"
  add_foreign_key "user_availabilities", "users"
  add_foreign_key "user_events", "events"
  add_foreign_key "user_events", "users"
  add_foreign_key "user_groups", "groups"
  add_foreign_key "user_groups", "users"
end
