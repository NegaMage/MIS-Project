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

ActiveRecord::Schema.define(version: 2019_12_20_045807) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "auditors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "post"
    t.string "string"
    t.bigint "audit_id", null: false
    t.bigint "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["audit_id"], name: "index_auditors_on_audit_id"
    t.index ["employee_id"], name: "index_auditors_on_employee_id"
  end

  create_table "audits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "unit_id"
    t.datetime "startdate"
    t.datetime "enddate"
    t.integer "duration"
    t.string "poa"
    t.integer "totalexpenditure"
    t.integer "salarayexpenditure"
    t.float "saltotalratio"
    t.integer "capitalcomponent"
    t.integer "revenuecomponent"
    t.integer "sanctionedexpenditure"
    t.integer "actualspent"
    t.float "actualsanctionedratio"
    t.integer "excessexpenditure"
    t.integer "savings"
    t.float "excesssavingsratio"
    t.integer "staffsanctioned"
    t.integer "staffvacancy"
    t.float "vacancypercent"
    t.text "remarks"
    t.boolean "constructionworksongoing"
    t.index ["unit_id"], name: "index_audits_on_unit_id"
  end

  create_table "circulars", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "circularid"
    t.string "circulartype"
    t.text "from"
    t.text "keywords"
    t.datetime "receiptdate"
    t.datetime "broadcastdate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "employee_code"
    t.boolean "flag"
    t.string "designation"
    t.string "email"
    t.string "phone_number"
    t.text "address"
    t.text "qualification"
    t.integer "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "registerid"
    t.string "registertype"
    t.datetime "deadline"
    t.datetime "firstreminder"
    t.integer "numofreminders"
    t.integer "reminderperiod"
    t.string "reminderemail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "units", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "oc"
    t.string "ministry"
    t.string "office_name"
    t.text "office_acronym"
    t.string "category"
    t.string "audit_section"
    t.text "utyp"
    t.text "address"
    t.string "phone"
    t.string "email"
    t.string "fax"
    t.text "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "pfms_implemented"
    t.boolean "generates_misreports"
    t.string "mis_report_frequency"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "auditors", "audits"
  add_foreign_key "auditors", "employees"
  add_foreign_key "audits", "units"
end
