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

ActiveRecord::Schema.define(version: 2019_09_20_132505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feature_technologies", force: :cascade do |t|
    t.bigint "technology_id", null: false
    t.bigint "feature_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feature_id"], name: "index_feature_technologies_on_feature_id"
    t.index ["technology_id"], name: "index_feature_technologies_on_technology_id"
  end

  create_table "features", force: :cascade do |t|
    t.integer "feature_type"
    t.string "name"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jwt_blacklists", force: :cascade do |t|
    t.string "jti"
    t.datetime "exp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jti"], name: "index_jwt_blacklists_on_jti"
  end

  create_table "project_technologies", force: :cascade do |t|
    t.bigint "technology_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_project_technologies_on_project_id"
    t.index ["technology_id"], name: "index_project_technologies_on_technology_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.boolean "personal_completed"
    t.string "personal_github_repo_url"
    t.boolean "personal_sharable"
    t.string "type", null: false
    t.bigint "template_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["template_id"], name: "index_projects_on_template_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "url"
    t.string "image"
    t.boolean "liked"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.string "github_url"
    t.bigint "template_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["template_id"], name: "index_solutions_on_template_id"
  end

  create_table "steps", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "feature_id", null: false
    t.integer "sequential_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feature_id"], name: "index_steps_on_feature_id"
    t.index ["project_id"], name: "index_steps_on_project_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.bigint "resource_id", null: false
    t.bigint "technology_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resource_id"], name: "index_tags_on_resource_id"
    t.index ["technology_id"], name: "index_tags_on_technology_id"
  end

  create_table "technologies", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "techology_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_projects", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_user_projects_on_project_id"
    t.index ["user_id"], name: "index_user_projects_on_user_id"
  end

  create_table "user_resources", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "resource_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resource_id"], name: "index_user_resources_on_resource_id"
    t.index ["user_id"], name: "index_user_resources_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "github_handle"
    t.string "dev_username"
    t.string "twitter_handle"
    t.string "instagram_handle"
    t.string "facebook_username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "feature_technologies", "features"
  add_foreign_key "feature_technologies", "technologies"
  add_foreign_key "project_technologies", "projects"
  add_foreign_key "project_technologies", "technologies"
  add_foreign_key "projects", "projects", column: "template_id"
  add_foreign_key "solutions", "projects", column: "template_id"
  add_foreign_key "steps", "features"
  add_foreign_key "steps", "projects"
  add_foreign_key "tags", "resources"
  add_foreign_key "tags", "technologies"
  add_foreign_key "user_projects", "projects"
  add_foreign_key "user_projects", "users"
  add_foreign_key "user_resources", "resources"
  add_foreign_key "user_resources", "users"
end
