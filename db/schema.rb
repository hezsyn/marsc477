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

ActiveRecord::Schema.define(version: 2018_11_16_194910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commands", force: :cascade do |t|
    t.bigint "simulation_id"
    t.string "input"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["simulation_id"], name: "index_commands_on_simulation_id"
  end

  create_table "engines", force: :cascade do |t|
    t.string "part"
    t.string "min_value"
    t.string "max_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engines_simulations", force: :cascade do |t|
    t.bigint "engine_id"
    t.bigint "simulation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engine_id"], name: "index_engines_simulations_on_engine_id"
    t.index ["simulation_id"], name: "index_engines_simulations_on_simulation_id"
  end

  create_table "logs", force: :cascade do |t|
    t.text "message"
    t.string "values"
    t.string "category"
    t.string "subcategory"
    t.bigint "simulation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["simulation_id"], name: "index_logs_on_simulation_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_users", force: :cascade do |t|
    t.bigint "role_id"
    t.bigint "user_id"
    t.integer "status"
    t.index ["role_id"], name: "index_roles_users_on_role_id"
    t.index ["user_id"], name: "index_roles_users_on_user_id"
  end

  create_table "sensors", force: :cascade do |t|
    t.string "part"
    t.text "description"
    t.string "min_value"
    t.string "max_value"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sensors_simulations", force: :cascade do |t|
    t.bigint "sensor_id"
    t.bigint "simulation_id"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sensor_id"], name: "index_sensors_simulations_on_sensor_id"
    t.index ["simulation_id"], name: "index_sensors_simulations_on_simulation_id"
  end

  create_table "simulations", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_simulations_on_user_id"
  end

  create_table "trajectories", force: :cascade do |t|
    t.bigint "simulation_id"
    t.integer "x_position"
    t.integer "y_position"
    t.integer "z_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["simulation_id"], name: "index_trajectories_on_simulation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password_digest"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
