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

ActiveRecord::Schema.define(version: 2019_12_22_122412) do

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
    t.string "circular_type"
    t.text "from"
    t.text "keywords"
    t.datetime "receipt_date"
    t.datetime "broadcast_date"
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
    t.string "register_type"
    t.datetime "deadline"
    t.datetime "first_reminder"
    t.integer "no_of_reminders"
    t.integer "reminder_period"
    t.string "reminder_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reports", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "audit_id"
    t.string "report_code"
    t.text "report_title"
    t.datetime "creation_date"
    t.datetime "dod_party"
    t.datetime "dor_vetting"
    t.datetime "dod_vetting"
    t.datetime "dod_entity"
<<<<<<< HEAD
    t.text "general_remakrs"
    t.integer "vs_auditor_id"
    t.integer "vs_aao_id"
    t.integer "vs_srao_id"
    t.integer "dd_id"
    t.text "vs_auditor_remarks"
    t.text "vs_aao_remarks"
    t.text "vs_srao_remarks"
    t.text "dd_remarks"
    t.boolean "vetting_done_1"
    t.boolean "vetting_done_2"
    t.boolean "vetting_done_3"
    t.boolean "vetting_done_dd"
    t.datetime "vetting_1_time"
    t.datetime "vetting_2_time"
    t.datetime "vetting_3_time"
    t.datetime "vetting_4_time"
=======
    t.text "remakrs"
>>>>>>> bb7b8065796ac938c2172bfd904f359548a51fcf
    t.boolean "freeze"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["audit_id"], name: "index_reports_on_audit_id"
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
  add_foreign_key "reports", "audits"
end
