# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100527094725) do

  create_table "consumers", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.integer  "pin"
    t.string   "state"
    t.string   "hphone"
    t.string   "phone"
    t.string   "mobile"
    t.string   "email"
    t.string   "website"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "product"
    t.string   "slno"
    t.string   "model"
    t.string   "capacity"
    t.datetime "datepurchased"
    t.integer  "warranty"
    t.text     "remark"
    t.integer  "consumer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
