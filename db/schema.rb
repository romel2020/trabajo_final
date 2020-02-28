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

ActiveRecord::Schema.define(version: 2020_02_28_123049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "contact"
    t.string "phone"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fantasyname"
    t.string "companyrut"
    t.string "contactrut"
    t.index ["location_id"], name: "index_companies_on_location_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "cant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["location_id"], name: "index_locations_on_location_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.string "profile"
    t.string "compañy_size"
    t.string "doc_month"
    t.string "help_you"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "document_id"
    t.bigint "status_id"
    t.boolean "status", default: false
    t.index ["document_id"], name: "index_quotations_on_document_id"
    t.index ["status_id"], name: "index_quotations_on_status_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "companies", "locations"
  add_foreign_key "locations", "locations"
  add_foreign_key "quotations", "documents"
  add_foreign_key "quotations", "statuses"
end
