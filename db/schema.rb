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

ActiveRecord::Schema.define(version: 2020_09_06_212242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "people", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name", default: "", null: false
    t.string "telephone", default: "", null: false
    t.string "cnpj", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.boolean "provider", default: false
    t.boolean "client", default: true
    t.index ["email"], name: "index_people_on_email", unique: true
    t.index ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", default: "", null: false
    t.float "height"
    t.float "width"
    t.float "length"
    t.float "weight"
    t.float "price", null: false
    t.integer "quantity", default: 0, null: false
    t.string "person_type", null: false
    t.bigint "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_type", "person_id"], name: "index_products_on_person_type_and_person_id"
  end

  create_table "purchase_products", force: :cascade do |t|
    t.integer "order_quantity", null: false
    t.bigint "purchase_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_purchase_products_on_product_id"
    t.index ["purchase_id"], name: "index_purchase_products_on_purchase_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.float "price", null: false
    t.float "discount", null: false
    t.float "final_price", null: false
    t.float "shipping", null: false
    t.string "person_type", null: false
    t.bigint "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_type", "person_id"], name: "index_purchases_on_person_type_and_person_id"
  end

  add_foreign_key "purchase_products", "products"
  add_foreign_key "purchase_products", "purchases"
end
