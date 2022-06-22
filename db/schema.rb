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

ActiveRecord::Schema[7.0].define(version: 2022_06_21_232847) do
  create_table "empresas", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "direccion", null: false
    t.string "oficina"
    t.string "rut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "comuna"
    t.string "region"
  end

  create_table "encuesta_inicials", force: :cascade do |t|
    t.integer "user_id", null: false
    t.boolean "pregunta1"
    t.boolean "pregunta2"
    t.boolean "pregunta3"
    t.boolean "pregunta4"
    t.boolean "pregunta5"
    t.boolean "pregunta6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_encuesta_inicials_on_user_id"
  end

  create_table "simulacions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "nombre", null: false
    t.boolean "realizada", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_simulacions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.boolean "encargado", default: false
    t.boolean "admin", default: false
    t.integer "empresa_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["empresa_id"], name: "index_users_on_empresa_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "users", "empresas"
end
