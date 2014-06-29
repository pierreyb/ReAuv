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

ActiveRecord::Schema.define(:version => 20140622124438) do

  create_table "banque_carrefour_entreprises", :force => true do |t|
    t.string   "entreprise_number",   :limit => 12
    t.string   "status",              :limit => 2
    t.string   "juridical_situation", :limit => 3
    t.string   "type_of_entreprise",  :limit => 1
    t.string   "juridical_form",      :limit => 3
    t.date     "start_date"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "banque_carrefour_entreprises", ["entreprise_number"], :name => "index_banque_carrefour_entreprises_on_entreprise_number", :unique => true

  create_table "bce_activities", :force => true do |t|
    t.string   "entity_number",  :limit => 13
    t.string   "activity_group", :limit => 6
    t.string   "nace_version",   :limit => 4
    t.integer  "nace_code"
    t.string   "classification", :limit => 4
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "bce_activities", ["entity_number"], :name => "index_bce_Activities_on_entity_number"

  create_table "bce_addresses", :force => true do |t|
    t.string   "entity_number",      :limit => 13
    t.string   "type_of_address",    :limit => 4
    t.string   "country",            :limit => 2
    t.string   "zipcode",            :limit => 20
    t.string   "municipality",       :limit => 200
    t.string   "street",             :limit => 200
    t.string   "house_number",       :limit => 22
    t.string   "box",                :limit => 20
    t.string   "extra_address_info", :limit => 80
    t.date     "date_striking_off"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "bce_addresses", ["entity_number"], :name => "index_bce_addresses_on_entity_number"

  create_table "bce_contacts", :force => true do |t|
    t.string   "entity_number",  :limit => 13
    t.string   "entity_contact", :limit => 3
    t.string   "contact_type",   :limit => 5
    t.string   "value"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "bce_contacts", ["entity_number"], :name => "index_bce_contacts_on_entity_number"

  create_table "bce_denominations", :force => true do |t|
    t.string   "entity_number",        :limit => 13
    t.string   "language",             :limit => 1
    t.string   "type_of_denomination", :limit => 3
    t.text     "denomination"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "bce_denominations", ["entity_number"], :name => "index_bce_denominations_on_entity_number"

  create_table "bce_establishments", :force => true do |t|
    t.string   "establishment_number", :limit => 13
    t.date     "start_date"
    t.string   "entreprise_number",    :limit => 12
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "bce_establishments", ["entreprise_number"], :name => "index_bce_establishments_on_entreprise_number"
  add_index "bce_establishments", ["establishment_number"], :name => "index_bce_establishments_on_establishment_number"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
