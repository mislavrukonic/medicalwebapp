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

ActiveRecord::Schema[7.0].define(version: 0) do
  create_table "client_hospital", primary_key: ["doctor_id", "patient_id"], charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "doctor_id", null: false
    t.integer "patient_id", null: false
    t.index ["patient_id"], name: "patient_id"
  end

  create_table "doctor", primary_key: "doctor_id", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", limit: 200, null: false
    t.string "name", limit: 50, null: false
    t.string "specialty", limit: 30, null: false
    t.string "phone", limit: 50, null: false
    t.string "password_digest", limit: 500, null: false
    t.integer "role_id", null: false
    t.index ["role_id"], name: "role_id"
  end

  create_table "patient", primary_key: "patient_id", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "email", limit: 50, null: false
    t.date "DoB", null: false
    t.string "address", limit: 200, null: false
    t.string "phone", limit: 50, null: false
    t.integer "role_id", null: false
    t.index ["role_id"], name: "role_id"
  end

  create_table "record", primary_key: "record_id", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "doctor_comments", limit: 1000, null: false
    t.date "last_accsessed", null: false
    t.integer "doctor_id", null: false
    t.integer "patient_id", null: false
    t.index ["doctor_id", "patient_id"], name: "doctor_id"
  end

  create_table "role", primary_key: "role_id", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "role_name", limit: 20, null: false
  end

  add_foreign_key "client_hospital", "doctor", primary_key: "doctor_id", name: "client_hospital_ibfk_1"
  add_foreign_key "client_hospital", "patient", primary_key: "patient_id", name: "client_hospital_ibfk_2"
  add_foreign_key "doctor", "role", primary_key: "role_id", name: "doctor_ibfk_1"
  add_foreign_key "patient", "role", primary_key: "role_id", name: "patient_ibfk_1"
  add_foreign_key "record", "client_hospital", column: "doctor_id", primary_key: "doctor_id", name: "record_ibfk_1"
  add_foreign_key "record", "client_hospital", column: "patient_id", primary_key: "patient_id", name: "record_ibfk_1"
end
