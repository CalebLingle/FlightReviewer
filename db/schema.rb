ActiveRecord::Schema.define(version: 2021_04_08_190914) do

  create_table "airlines", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "score"
    t.integer "airline_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["airline_id"], name: "index_reviews_on_airline_id"
  end

  add_foreign_key "reviews", "airlines"
end
