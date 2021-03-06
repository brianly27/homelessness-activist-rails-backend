# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_01_133605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.bigint "resource_id", null: false
    t.string "name"
    t.string "description"
    t.string "form"
    t.string "submit_address"
    t.string "readme"
    t.string "contact_name"
    t.string "contact_phone"
    t.string "contact_email"
    t.string "location_name"
    t.decimal "location_lat", precision: 10, scale: 6
    t.decimal "location_long", precision: 10, scale: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resource_id"], name: "index_actions_on_resource_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "alias"
    t.string "email"
    t.string "location"
    t.string "cellphone"
    t.boolean "alive"
    t.float "income"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients_actions", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.bigint "action_id", null: false
    t.string "submit_date"
    t.string "complete_date"
    t.string "status"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["action_id"], name: "index_clients_actions_on_action_id"
    t.index ["client_id"], name: "index_clients_actions_on_client_id"
  end

  create_table "clients_resources", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.bigint "resource_id", null: false
    t.boolean "wants_resource"
    t.boolean "has_resource"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_clients_resources_on_client_id"
    t.index ["resource_id"], name: "index_clients_resources_on_resource_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "readme"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "cellphone"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users_clients", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_users_clients_on_client_id"
    t.index ["user_id"], name: "index_users_clients_on_user_id"
  end

  add_foreign_key "actions", "resources"
  add_foreign_key "clients_actions", "actions"
  add_foreign_key "clients_actions", "clients"
  add_foreign_key "clients_resources", "clients"
  add_foreign_key "clients_resources", "resources"
  add_foreign_key "users_clients", "clients"
  add_foreign_key "users_clients", "users"
end
