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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121022184642) do

  create_table "agencia", :force => true do |t|
    t.string   "numero_agencia"
    t.string   "endereco"
    t.integer  "banco_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "agencia", ["banco_id"], :name => "index_agencia_on_banco_id"

  create_table "bancos", :force => true do |t|
    t.string   "nome"
    t.string   "observacoes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "municipios", :force => true do |t|
    t.string   "nome"
    t.integer  "uf_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "municipios", ["uf_id"], :name => "index_municipios_on_uf_id"

  create_table "pais", :force => true do |t|
    t.string   "nome"
    t.string   "nacionalidade"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "rubricas", :force => true do |t|
    t.float    "valor_entrada"
    t.float    "valor_saida"
    t.integer  "tabelageral_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "rubricas", ["tabelageral_id"], :name => "index_rubricas_on_tabelageral_id"

  create_table "tabelagerals", :force => true do |t|
    t.float    "valor_entrada"
    t.float    "valor_saida"
    t.integer  "ano"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tiporubricas", :force => true do |t|
    t.string   "definicao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ufs", :force => true do |t|
    t.string   "sigla"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
