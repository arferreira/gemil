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

ActiveRecord::Schema.define(version: 20150902192204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dependents", force: :cascade do |t|
    t.string   "pesdepnome"
    t.integer  "pesdepgrau"
    t.string   "pesdepsexo"
    t.date     "pesdepdn"
    t.string   "pescodigo"
    t.string   "pesdepboletimnum"
    t.date     "pesdepboletimdata"
    t.integer  "pesdepompub"
    t.string   "pesdepradionum"
    t.date     "pesdepradiodata"
    t.integer  "pesdepirrf"
    t.string   "pesdeptiposaram"
    t.string   "pesdeptipo"
    t.integer  "pesdepuser"
    t.date     "pesdepdatacad"
    t.integer  "pesdepid"
    t.integer  "pesdeppesid"
    t.date     "pesdepdatacas"
    t.integer  "pes_cracha_id"
    t.date     "pes_cracha_val"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "frames", force: :cascade do |t|
    t.string   "quadrodesc"
    t.string   "quadroabrev"
    t.integer  "quadrogrupo"
    t.integer  "quadroid",    default: "nextval('frames_id_seq'::regclass)"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graduations", force: :cascade do |t|
    t.string   "pgdesc"
    t.string   "pgabrev"
    t.string   "pgabrevtdp"
    t.integer  "pgrefeitorio"
    t.integer  "pggrupo1"
    t.integer  "pggrupotdp"
    t.integer  "pgclasse"
    t.integer  "pgid",         default: "nextval('graduations_id_seq'::regclass)"
    t.integer  "pggrupo2"
    t.string   "pgpronome"
    t.string   "pgpronome2"
    t.string   "pgabrev1"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: :cascade do |t|
    t.string   "saram"
    t.integer  "antiguidade"
    t.string   "nome_completo"
    t.string   "nome_guerra"
    t.string   "imagem"
    t.date     "data_nascimento"
    t.integer  "posto_graduacao"
    t.integer  "quadro"
    t.integer  "especialidade"
    t.integer  "situacao"
    t.string   "sispes"
    t.string   "identidade"
    t.string   "rarc"
    t.string   "cpf"
    t.string   "pispasep"
    t.string   "titulonum"
    t.integer  "titulozona"
    t.integer  "titulosecao"
    t.string   "titulocidade"
    t.string   "titulouf"
    t.string   "cnhnum"
    t.string   "cnhcat"
    t.date     "cnhvalidade"
    t.integer  "om"
    t.integer  "omanterior"
    t.string   "motivotransf"
    t.integer  "localtrabalho"
    t.string   "turma"
    t.string   "tempoantano"
    t.string   "tempoantmes"
    t.string   "tempoantdia"
    t.string   "sexo"
    t.string   "religiao"
    t.integer  "estadocivil"
    t.integer  "tiposangue"
    t.string   "filpai"
    t.string   "filmae"
    t.string   "naturalcidade"
    t.string   "naturaluf"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "numero"
    t.string   "cidade"
    t.string   "uf"
    t.string   "cep"
    t.string   "fone1"
    t.string   "fone2"
    t.string   "fonetrab"
    t.string   "fonetrabramal"
    t.string   "email"
    t.string   "funcao"
    t.string   "falert"
    t.integer  "falertesquadrao"
    t.integer  "escala"
    t.integer  "livrobruxa"
    t.string   "comportamento"
    t.integer  "banco"
    t.string   "agencia"
    t.string   "contacorrente"
    t.text     "obs"
    t.string   "tipo"
    t.integer  "user"
    t.date     "datacadastro"
    t.integer  "cracha"
    t.integer  "turnotrabalho"
    t.integer  "cmt"
    t.integer  "escala1"
    t.string   "login"
    t.string   "secao"
    t.integer  "escala_preta"
    t.integer  "escala_vermelha"
    t.integer  "escala_roxa"
    t.integer  "escala_amarela"
    t.boolean  "mostra_niver"
    t.integer  "cracha_id",            default: "nextval('people_id_seq'::regclass)"
    t.date     "cracha_validade"
    t.integer  "vilaa"
    t.integer  "escala_receber_email"
    t.integer  "esqsec_id"
    t.integer  "ass_dispensa"
    t.integer  "funcao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "situations", force: :cascade do |t|
    t.string   "situacaodesc"
    t.string   "situacaoabrev"
    t.integer  "situacaoid",    default: "nextval('situations_id_seq'::regclass)"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "espdesc"
    t.string   "espabrev"
    t.string   "espcodigo"
    t.integer  "espgrupo1"
    t.string   "espgrupo2"
    t.integer  "espid",      default: "nextval(('"specialties_espid_seq"'::text)::regclass)"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "login",               default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login"], name: "index_users_on_login", unique: true, using: :btree

end
