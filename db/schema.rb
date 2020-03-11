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

ActiveRecord::Schema.define(version: 2020_03_11_151656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "afps", force: :cascade do |t|
    t.string "name"
    t.string "comision"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "laboralrelation_id"
    t.index ["laboralrelation_id"], name: "index_afps_on_laboralrelation_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "contact"
    t.string "phone"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "laboralrelation_id"
    t.bigint "mutual_id"
    t.index ["laboralrelation_id"], name: "index_companies_on_laboralrelation_id"
    t.index ["location_id"], name: "index_companies_on_location_id"
    t.index ["mutual_id"], name: "index_companies_on_mutual_id"
  end

  create_table "compensationboxes", force: :cascade do |t|
    t.string "name"
    t.string "comision"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "consult"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credits", force: :cascade do |t|
    t.string "date_ini"
    t.string "quotes"
    t.string "date_finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "amount"
    t.string "description"
    t.bigint "laboralrelation_id"
    t.index ["laboralrelation_id"], name: "index_credits_on_laboralrelation_id"
  end

  create_table "documents", force: :cascade do |t|
    t.bigint "document_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.bigint "quotation_id"
    t.index ["document_id"], name: "index_documents_on_document_id"
    t.index ["quotation_id"], name: "index_documents_on_quotation_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "rut"
    t.string "name"
    t.string "father_name"
    t.string "mother_name"
    t.string "date_ini"
    t.string "nationality"
    t.string "sexo"
    t.string "address"
    t.string "phone_fix"
    t.string "phone"
    t.string "email"
    t.string "charges"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "laboralrelation_id"
    t.index ["laboralrelation_id"], name: "index_employees_on_laboralrelation_id"
  end

  create_table "groupos", force: :cascade do |t|
    t.string "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "laboralrelation_id"
    t.index ["laboralrelation_id"], name: "index_groupos_on_laboralrelation_id"
  end

  create_table "healths", force: :cascade do |t|
    t.string "name"
    t.string "comision"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "laboralrelation_id"
    t.index ["laboralrelation_id"], name: "index_healths_on_laboralrelation_id"
  end

  create_table "laboralrelations", force: :cascade do |t|
    t.boolean "undefined"
    t.string "date_ini"
    t.string "date_finish"
    t.string "base_salary"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "afp_id"
    t.bigint "employee_id"
    t.bigint "health_id"
    t.bigint "company_id"
    t.bigint "credit_id"
    t.index ["afp_id"], name: "index_laboralrelations_on_afp_id"
    t.index ["company_id"], name: "index_laboralrelations_on_company_id"
    t.index ["credit_id"], name: "index_laboralrelations_on_credit_id"
    t.index ["employee_id"], name: "index_laboralrelations_on_employee_id"
    t.index ["health_id"], name: "index_laboralrelations_on_health_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["location_id"], name: "index_locations_on_location_id"
  end

  create_table "mutuals", force: :cascade do |t|
    t.string "name"
    t.string "comision"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "company_id"
    t.index ["company_id"], name: "index_mutuals_on_company_id"
  end

  create_table "positions", force: :cascade do |t|
    t.bigint "position_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["position_id"], name: "index_positions_on_position_id"
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
    t.boolean "status", default: false
    t.bigint "document_id"
    t.bigint "position_id"
    t.index ["document_id"], name: "index_quotations_on_document_id"
    t.index ["position_id"], name: "index_quotations_on_position_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "afps", "laboralrelations"
  add_foreign_key "companies", "laboralrelations"
  add_foreign_key "companies", "locations"
  add_foreign_key "companies", "mutuals"
  add_foreign_key "credits", "laboralrelations"
  add_foreign_key "documents", "documents"
  add_foreign_key "documents", "quotations"
  add_foreign_key "employees", "laboralrelations"
  add_foreign_key "groupos", "laboralrelations"
  add_foreign_key "healths", "laboralrelations"
  add_foreign_key "laboralrelations", "afps"
  add_foreign_key "laboralrelations", "companies"
  add_foreign_key "laboralrelations", "credits"
  add_foreign_key "laboralrelations", "employees"
  add_foreign_key "laboralrelations", "healths"
  add_foreign_key "locations", "locations"
  add_foreign_key "mutuals", "companies"
  add_foreign_key "positions", "positions"
  add_foreign_key "quotations", "documents"
  add_foreign_key "quotations", "positions"
end
