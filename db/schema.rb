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

ActiveRecord::Schema.define(version: 20170511172349) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "rua"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cep"
    t.integer  "city_id"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["city_id"], name: "index_addresses_on_city_id", using: :btree
    t.index ["person_id"], name: "index_addresses_on_person_id", using: :btree
  end

  create_table "cities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "nome"
    t.integer "state_id"
    t.index ["state_id"], name: "index_cities_on_state_id", using: :btree
  end

  create_table "people", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "celular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nome"
    t.string "sigla"
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "addresses", "people"
  add_foreign_key "cities", "states"
end
