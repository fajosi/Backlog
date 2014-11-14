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

ActiveRecord::Schema.define(version: 20141113183515) do

  create_table "categoria", force: true do |t|
    t.string   "descricao"
    t.boolean  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classificacaobacklogs", force: true do |t|
    t.string   "classificacao"
    t.string   "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evidencia", force: true do |t|
    t.string   "descricao"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagem_file_name"
    t.string   "imagem_content_type"
    t.integer  "imagem_file_size"
    t.datetime "imagem_updated_at"
  end

  create_table "item_backlogs", force: true do |t|
    t.string   "descricao"
    t.integer  "prioridade"
    t.date     "dataconclusao"
    t.string   "observacao"
    t.integer  "sistema_id"
    t.integer  "tempoestimado"
    t.integer  "status_id"
    t.integer  "classificacao_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_backlogs", ["classificacao_id"], name: "index_item_backlogs_on_classificacao_id"
  add_index "item_backlogs", ["sistema_id"], name: "index_item_backlogs_on_sistema_id"
  add_index "item_backlogs", ["status_id"], name: "index_item_backlogs_on_status_id"
  add_index "item_backlogs", ["user_id"], name: "index_item_backlogs_on_user_id"

  create_table "sistemas", force: true do |t|
    t.integer  "codigo"
    t.string   "nomeabreviado"
    t.string   "nomecompleto"
    t.boolean  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statusbacklogs", force: true do |t|
    t.string   "status"
    t.boolean  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "descricao"
    t.integer  "categorias_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "statuses", ["categorias_id"], name: "index_statuses_on_categorias_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "senha"
    t.boolean  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nomeCompleto"
  end

end
