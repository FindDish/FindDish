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

ActiveRecord::Schema.define(version: 20161117154619) do

  create_table "alergias", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "alergias"
    t.integer  "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "fk_rails_fe7d94f07c", using: :btree
  end

  create_table "establecimientos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.string   "especialidad"
    t.string   "email"
    t.integer  "calificacion"
    t.string   "direccion"
    t.string   "rif"
    t.integer  "telefono"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ingredientes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ingredientes"
    t.integer  "platillo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["platillo_id"], name: "fk_rails_9904e9cee8", using: :btree
  end

  create_table "ordenes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "platillo_id"
    t.integer  "usuario_id"
    t.date     "fecha"
    t.time     "hora"
    t.string   "estado"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["platillo_id"], name: "fk_rails_eb884b6548", using: :btree
    t.index ["usuario_id"], name: "fk_rails_9ea5889946", using: :btree
  end

  create_table "platillos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "establecimiento_id"
    t.string   "nombre"
    t.string   "ingrediente"
    t.integer  "precio"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["establecimiento_id"], name: "index_platillos_on_establecimiento_id", using: :btree
  end

  create_table "reservas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "fecha"
    t.time     "hora"
    t.string   "estado"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "establecimiento_id"
    t.integer  "usuario_id"
    t.index ["establecimiento_id"], name: "fk_rails_cbaee0d9ed", using: :btree
    t.index ["usuario_id"], name: "fk_rails_df01d3b29f", using: :btree
  end

  create_table "telefonos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "telefono"
    t.integer  "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "fk_rails_b454941ef1", using: :btree
  end

  create_table "usuarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cedula"
    t.integer  "numero"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alergias", "usuarios"
  add_foreign_key "ingredientes", "platillos"
  add_foreign_key "ordenes", "platillos"
  add_foreign_key "ordenes", "usuarios"
  add_foreign_key "platillos", "establecimientos"
  add_foreign_key "reservas", "establecimientos"
  add_foreign_key "reservas", "usuarios"
  add_foreign_key "telefonos", "usuarios"
end
