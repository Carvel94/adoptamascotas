# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160527153358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animal_adoptars", force: :cascade do |t|
    t.string   "tipo"
    t.string   "raza"
    t.string   "genero"
    t.string   "descripcion"
    t.string   "edad"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "rescatado"
  end

  create_table "servicios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "ciudad"
    t.string   "estado"
    t.text     "descripcion"
    t.string   "logo"
    t.string   "correo1"
    t.string   "correo2"
    t.integer  "calificacion"
    t.integer  "tipo_servicio_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "telefono1"
    t.string   "telefono2"
    t.string   "celular1"
    t.string   "celular2"
  end

  add_index "servicios", ["tipo_servicio_id"], name: "index_servicios_on_tipo_servicio_id", using: :btree

  create_table "tipo_servicios", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "servicios", "tipo_servicios"
end
