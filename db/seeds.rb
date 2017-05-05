# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

beans = Plant.create(
	name: 'Beans',
	days_to_water:'2',
	img_url: 'http://i.imgur.com/O9EobIJ.png'
	)

  create_table "plants", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "color"
    t.integer  "days_to_water"
    t.string   "img_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false