# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150907163849) do

  create_table "bus_assignments", force: :cascade do |t|
    t.integer  "bus_id",      limit: 4, null: false
    t.integer  "bus_line_id", limit: 4, null: false
    t.time     "depart_at",             null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "bus_assignments", ["bus_id"], name: "index_bus_assignments_on_bus_id", using: :btree
  add_index "bus_assignments", ["bus_line_id"], name: "index_bus_assignments_on_bus_line_id", using: :btree

  create_table "bus_lines", force: :cascade do |t|
    t.string   "number",     limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "buses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "route_stop_links", force: :cascade do |t|
    t.integer  "route_id",   limit: 4, null: false
    t.integer  "stop_id",    limit: 4, null: false
    t.integer  "link_order", limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "route_stop_links", ["link_order"], name: "index_route_stop_links_on_link_order", using: :btree
  add_index "route_stop_links", ["route_id", "stop_id"], name: "index_route_stop_links_on_route_id_and_stop_id", using: :btree

  create_table "routes", force: :cascade do |t|
    t.string   "name",        limit: 255, null: false
    t.integer  "bus_line_id", limit: 4,   null: false
    t.integer  "route_order", limit: 4,   null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "routes", ["bus_line_id"], name: "index_routes_on_bus_line_id", using: :btree
  add_index "routes", ["route_order"], name: "index_routes_on_route_order", using: :btree

  create_table "stops", force: :cascade do |t|
    t.string   "code",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "stops", ["code"], name: "index_stops_on_code", using: :btree

end
