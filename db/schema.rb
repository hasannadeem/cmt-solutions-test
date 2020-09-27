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

ActiveRecord::Schema.define(version: 20200805104938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "endpoints", force: :cascade do |t|
    t.string "address_1"
    t.string "address_2"
    t.string "address_type"
    t.string "affiliation"
    t.string "affiliationName"
    t.string "city"
    t.string "contentOtherDescription"
    t.string "contentType"
    t.string "contentTypeDescription"
    t.string "country_code"
    t.string "country_name"
    t.string "endpoint"
    t.string "endpointDescription"
    t.string "endpointType"
    t.string "endpointTypeDescription"
    t.string "postal_code"
    t.string "state"
    t.string "use"
    t.string "useDescription"
    t.string "useOtherDescription"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_endpoints_on_provider_id"
  end

  create_table "identifiers", force: :cascade do |t|
    t.string "code"
    t.string "desc"
    t.string "identifier"
    t.string "issuer"
    t.string "state"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_identifiers_on_provider_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address_1"
    t.string "address_2"
    t.string "address_purpose"
    t.string "address_type"
    t.string "city"
    t.string "country_code"
    t.string "country_name"
    t.string "postal_code"
    t.string "state"
    t.string "telephone_number"
    t.string "type"
    t.string "fax_number"
    t.datetime "update_date"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_locations_on_provider_id"
  end

  create_table "other_names", force: :cascade do |t|
    t.string "code"
    t.string "credential"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "prefix"
    t.string "type"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_other_names_on_provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.integer "created_epoch"
    t.integer "last_updated_epoch"
    t.integer "number"
    t.string "enumeration_type"
    t.jsonb "basic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "search_count", default: 1, null: false
  end

  create_table "taxonomies", force: :cascade do |t|
    t.string "code"
    t.string "desc"
    t.string "license"
    t.boolean "primary"
    t.string "state"
    t.string "taxonomy_group"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_taxonomies_on_provider_id"
  end

end
