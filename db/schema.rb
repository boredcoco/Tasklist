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

ActiveRecord::Schema.define(version: 2021_12_17_022728) do

  create_table "appointments", force: :cascade do |t|
    t.string "name"
    t.integer "date_day"
    t.integer "date_month"
    t.integer "date_year"
    t.string "start_time"
    t.string "end_time"
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "start_ampm"
    t.string "end_ampm"
  end

  create_table "my_settings", force: :cascade do |t|
    t.integer "happiness_bar"
    t.integer "theme_color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "color_red"
    t.integer "color_blue"
    t.integer "color_green"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "due_day"
    t.integer "due_month"
    t.integer "due_year"
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
