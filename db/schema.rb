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

ActiveRecord::Schema.define(version: 2019_08_20_065917) do

  create_table "syougais", force: :cascade do |t|
    t.integer "jichitai_cd"
    t.integer "jigyou_cd"
    t.text "naiyou"
    t.text "jisyou"
    t.text "syochi"
    t.text "biko"
    t.string "enduser"
    t.string "motouke"
    t.string "syubetu_kbn"
    t.string "hosyu_kbn"
    t.date "renraku_d"
    t.time "renraku_t"
    t.float "syanai"
    t.date "genchi_d"
    t.time "genchi_t"
    t.date "sagyou_d"
    t.time "sagyou_t"
    t.float "sagyoukei"
    t.float "idou"
    t.integer "taiou1_cd"
    t.integer "taiou2_cd"
    t.integer "taiou3_cd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
