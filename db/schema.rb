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

ActiveRecord::Schema.define(:version => 20121023203103) do

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

  create_table "beneficiarios", :force => true do |t|
    t.string   "nome"
    t.integer  "contum_id"
    t.integer  "endereco_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "beneficiarios", ["contum_id"], :name => "index_beneficiarios_on_contum_id"
  add_index "beneficiarios", ["endereco_id"], :name => "index_beneficiarios_on_endereco_id"

  create_table "conta", :force => true do |t|
    t.string   "numero_conta"
    t.integer  "agencium_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "conta", ["agencium_id"], :name => "index_conta_on_agencium_id"

  create_table "enderecobrasileiros", :force => true do |t|
    t.string   "nome_logradouro"
    t.string   "numero"
    t.string   "complemento"
    t.string   "caixa_postal"
    t.string   "bairro"
    t.string   "cep"
    t.integer  "municipio_id"
    t.integer  "endereco_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "enderecobrasileiros", ["endereco_id"], :name => "index_enderecobrasileiros_on_endereco_id"
  add_index "enderecobrasileiros", ["municipio_id"], :name => "index_enderecobrasileiros_on_municipio_id"

  create_table "enderecoestrangeiros", :force => true do |t|
    t.string   "identificacao_residencial"
    t.string   "identificacao_local"
    t.string   "identificacao_regional"
    t.integer  "pai_id"
    t.integer  "endereco_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "enderecoestrangeiros", ["endereco_id"], :name => "index_enderecoestrangeiros_on_endereco_id"
  add_index "enderecoestrangeiros", ["pai_id"], :name => "index_enderecoestrangeiros_on_pai_id"

  create_table "enderecos", :force => true do |t|
    t.string   "estrangeiro"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "gastos", :force => true do |t|
    t.string   "data"
    t.float    "valor"
    t.string   "observacoes"
    t.integer  "rubrica_id"
    t.integer  "beneficiario_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "gastos", ["beneficiario_id"], :name => "index_gastos_on_beneficiario_id"
  add_index "gastos", ["rubrica_id"], :name => "index_gastos_on_rubrica_id"

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

  create_table "pessoafisicas", :force => true do |t|
    t.string   "cpf"
    t.string   "documento"
    t.integer  "beneficiario_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "pessoafisicas", ["beneficiario_id"], :name => "index_pessoafisicas_on_beneficiario_id"

  create_table "pessoajuridicas", :force => true do |t|
    t.string   "cnpj"
    t.string   "observacoes"
    t.integer  "beneficiario_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "pessoajuridicas", ["beneficiario_id"], :name => "index_pessoajuridicas_on_beneficiario_id"

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

  create_table "telefones", :force => true do |t|
    t.string   "tipo"
    t.string   "numero"
    t.string   "codigo_area"
    t.string   "ramal"
    t.integer  "beneficiario_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "telefones", ["beneficiario_id"], :name => "index_telefones_on_beneficiario_id"

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
