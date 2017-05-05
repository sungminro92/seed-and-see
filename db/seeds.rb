# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.destroy_all

beans = Plant.create(
	name: 'Beans',
	days_to_water:'2',
	img_url: 'http://i.imgur.com/O9EobIJ.png'
	)

beets = Plant.create(
	name: 'Beets',
	days_to_water:'1',
	img_url: 'http://i.imgur.com/O9EobIJ.png'
	)

broccoli = Plant.create(
	name: 'Broccoli',
	days_to_water:'2',
	img_url: 'http://i.imgur.com/O9EobIJ.png'
	)

brussels_sprouts = Plant.create(
	name: 'Brussels sprouts',
	days_to_water:'',
	img_url: 'http://i.imgur.com/O9EobIJ.png'
	)

print "\n Seeding Done."
