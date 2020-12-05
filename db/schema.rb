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

ActiveRecord::Schema.define(version: 2019_11_10_080336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "code", limit: 100
    t.integer "product_id"
    t.integer "number"
    t.decimal "amount", precision: 14, scale: 4
    t.integer "user_id"
    t.string "aasm_state", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "contact", limit: 100
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "title", limit: 50
    t.integer "sorting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name", limit: 100
    t.integer "number"
    t.string "description"
    t.boolean "on_shelf"
    t.decimal "price", precision: 14, scale: 4
    t.integer "product_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location", limit: 500
    t.string "img", limit: 500
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "avatar"
    t.string "phone"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin"
  end

end
