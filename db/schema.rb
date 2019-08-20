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

ActiveRecord::Schema.define(version: 2019_08_16_201539) do

  create_table "log_workouts", force: :cascade do |t|
    t.integer "amount"
    t.integer "workout_id"
    t.integer "log_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["log_id"], name: "index_log_workouts_on_log_id"
    t.index ["workout_id"], name: "index_log_workouts_on_workout_id"
  end

  create_table "logs", force: :cascade do |t|
    t.integer "calories"
    t.integer "workout_time"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "uid"
    t.string "email"
    t.string "password_digest"
    t.string "title"
    t.integer "exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "workout_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
