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

ActiveRecord::Schema.define(version: 20171102102640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "scenarios", force: :cascade do |t|
    t.string "key"
    t.boolean "active", default: false
    t.integer "order"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["active"], name: "index_scenarios_on_active"
    t.index ["key"], name: "index_scenarios_on_key", unique: true
  end

  create_table "scenes", force: :cascade do |t|
    t.bigint "stage_id"
    t.text "content"
    t.boolean "example", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stage_id"], name: "index_scenes_on_stage_id"
  end

  create_table "stages", force: :cascade do |t|
    t.bigint "scenario_id"
    t.integer "order"
    t.integer "duration", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scenario_id", "order"], name: "index_stages_on_scenario_id_and_order"
    t.index ["scenario_id"], name: "index_stages_on_scenario_id"
  end

  add_foreign_key "scenes", "stages"
  add_foreign_key "stages", "scenarios"
end
