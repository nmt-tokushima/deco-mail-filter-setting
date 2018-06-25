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

ActiveRecord::Schema.define(version: 2018_06_25_054008) do

  create_table "attachments_encryption_disable_domain_froms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "setting_id", null: false
    t.string "domain", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["setting_id"], name: "index_attachments_encryption_disable_domain_froms_on_setting_id"
  end

  create_table "attachments_encryption_disable_domain_tos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "setting_id", null: false
    t.string "domain", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["setting_id"], name: "index_attachments_encryption_disable_domain_tos_on_setting_id"
  end

  create_table "attachments_encryption_disable_emails", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "setting_id", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["setting_id"], name: "index_attachments_encryption_disable_emails_on_setting_id"
  end

  create_table "bcc_conversion_disable_domains", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "setting_id", null: false
    t.string "domain", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["setting_id"], name: "index_bcc_conversion_disable_domains_on_setting_id"
  end

  create_table "settings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.boolean "bcc_conversion", default: false, null: false
    t.string "bcc_dummy_to", default: "", null: false
    t.boolean "attachments_encryption", default: false, null: false
    t.integer "attachments_encryption_password_length", default: 8, null: false
    t.string "attachments_encryption_subtitle", default: "", null: false
    t.text "attachments_encryption_additional_text", null: false
    t.integer "attachments_encryption_encoding", default: 1, null: false
    t.boolean "attachments_encryption_password_notification", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attachments_encryption_disable_domain_froms", "settings"
  add_foreign_key "attachments_encryption_disable_domain_tos", "settings"
  add_foreign_key "attachments_encryption_disable_emails", "settings"
  add_foreign_key "bcc_conversion_disable_domains", "settings"
end
