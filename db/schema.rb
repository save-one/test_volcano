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

ActiveRecord::Schema.define(version: 20180412114420) do

  create_table "cart_items", force: :cascade do |t|
    t.integer "purchase_id"
    t.integer "product_id_id"
    t.integer "sale"
    t.boolean "cart_item_flg"
    t.integer "price"
    t.integer "cart_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cart_id"
    t.integer "cartcart_id"
    t.integer "productproduct_id"
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
    t.index ["cart_id_id"], name: "index_cart_items_on_cart_id_id"
    t.index ["cartcart_id"], name: "index_cart_items_on_cartcart_id"
    t.index ["product_id_id"], name: "index_cart_items_on_product_id_id"
    t.index ["productproduct_id"], name: "index_cart_items_on_productproduct_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "customer_id"
    t.boolean "cart_flg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "cd_title"
    t.string "artist"
    t.text "picture_id"
    t.text "sound_source"
    t.integer "price"
    t.string "label"
    t.string "genre"
    t.integer "stock"
    t.date "start_date"
    t.boolean "product_flg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "user_id"
    t.integer "p_code"
    t.string "d_region"
    t.string "d_street"
    t.string "d_street_bunch"
    t.string "d_room_no"
    t.string "d_name"
    t.boolean "purchase_flg"
    t.string "status"
    t.string "pay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cart_id"
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
    t.string "name_sei"
    t.string "name_mei"
    t.string "name_kana_sei"
    t.string "name_kana_mei"
    t.date "birthday"
    t.string "sex"
    t.integer "postal_code"
    t.string "region"
    t.string "street"
    t.string "street_bunch"
    t.string "room_no"
    t.integer "phone"
    t.string "credit_card"
    t.boolean "user_flg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
