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

ActiveRecord::Schema.define(version: 2019_06_19_084859) do

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "account_name"
    t.string "company_name"
    t.string "first_name"
    t.string "surname_name"
    t.string "address1"
    t.string "address2"
    t.string "address3"
    t.string "city"
    t.string "postcode"
    t.string "telephone_number"
    t.string "mobile_number"
    t.string "email_address"
    t.string "confirmation_code"
    t.string "date_time_joined"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_notes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "water_id"
    t.bigint "customer_id"
    t.string "delivery_number"
    t.string "item"
    t.string "quantity"
    t.string "purchase_order"
    t.string "date_ordered"
    t.string "date_due"
    t.string "date_delivered"
    t.string "time_delivered"
    t.string "notes"
    t.string "driver"
    t.string "signature_strip"
    t.string "payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_delivery_notes_on_customer_id"
    t.index ["water_id"], name: "index_delivery_notes_on_water_id"
  end

  create_table "drivers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "delivery_notes_id"
    t.string "driver_account_number"
    t.string "driver_name"
    t.string "reg_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["delivery_notes_id"], name: "index_drivers_on_delivery_notes_id"
  end

  create_table "invoices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "delivery_note_id"
    t.string "invoice_number"
    t.string "delivery_note"
    t.string "account_name"
    t.string "total_net"
    t.string "vat"
    t.string "total_gross"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
    t.index ["delivery_note_id"], name: "index_invoices_on_delivery_note_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "product_account_number"
    t.string "product_type"
    t.string "price"
    t.string "deposit"
    t.string "nominal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "waters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "address1"
    t.string "address2"
    t.string "address3"
    t.string "city"
    t.string "postcode"
    t.string "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_waters_on_customer_id"
  end

  add_foreign_key "delivery_notes", "customers"
  add_foreign_key "delivery_notes", "waters"
  add_foreign_key "drivers", "delivery_notes", column: "delivery_notes_id"
  add_foreign_key "invoices", "customers"
  add_foreign_key "invoices", "delivery_notes"
  add_foreign_key "waters", "customers"
end
