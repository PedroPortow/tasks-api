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

ActiveRecord::Schema[7.0].define(version: 2023_10_05_211743) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "priority_mappings", force: :cascade do |t|
    t.integer "priority"
    t.string "text"
  end

  create_table "status_mappings", force: :cascade do |t|
    t.integer "status"
    t.string "text"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.date "finished_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "status_mapping_id", null: false
    t.integer "priority_mapping_id", null: false
    t.index ["priority_mapping_id"], name: "index_tasks_on_priority_mapping_id"
    t.index ["status_mapping_id"], name: "index_tasks_on_status_mapping_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "tasks_categories", force: :cascade do |t|
    t.integer "task_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_tasks_categories_on_category_id"
    t.index ["task_id"], name: "index_tasks_categories_on_task_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.string "name"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "workspace_tasks", force: :cascade do |t|
    t.integer "task_id", null: false
    t.integer "workspace_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_workspace_tasks_on_task_id"
    t.index ["workspace_id"], name: "index_workspace_tasks_on_workspace_id"
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "user_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id_id"], name: "index_workspaces_on_user_id_id"
  end

  add_foreign_key "categories", "users"
  add_foreign_key "tasks", "priority_mappings"
  add_foreign_key "tasks", "status_mappings"
  add_foreign_key "tasks", "users"
  add_foreign_key "tasks_categories", "categories"
  add_foreign_key "tasks_categories", "tasks"
  add_foreign_key "workspace_tasks", "tasks"
  add_foreign_key "workspace_tasks", "workspaces"
  add_foreign_key "workspaces", "user_ids"
end
