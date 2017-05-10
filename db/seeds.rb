# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Plant.destroy_all
Post.destroy_all
Comment.destroy_all

user1 = User.create(
	name: 'Sungmin ro', email: 'sungminro@gmail.com', password: '123456', password_confirmation:'123456')

user2 = User.create(
	name: 'Jesse Lee', email: 'jesselee@gmail.com', password: '123456', password_confirmation:'123456')

user3 = User.create(
	name: 'Mario Cart', email: 'mariocart@gmail.com', password: '123456', password_confirmation:'123456' )

plant1 = Plant.create(
	name: 'Beans', days_to_water:'2', img_url: 'http://i.imgur.com/O9EobIJ.png' )

plant2 = Plant.create(
	name: 'Beets', days_to_water:'1', img_url: 'http://i.imgur.com/O9EobIJ.png' )

plant3 = Plant.create(
	name: 'Broccoli', days_to_water:'2', img_url: 'http://i.imgur.com/O9EobIJ.png' )

plant4 = Plant.create(
	name: 'Brussels sprouts', days_to_water:'', img_url: 'http://i.imgur.com/O9EobIJ.png' )

post1 = Post.create(
	title: "POWMEOW!", description: "This is my cat in the garden!", img_url: "http://i.imgur.com/O9EobIJ.png", user_id: user1.id)

comment1 = Comment.create(
	content: "This is the first comment", post_id: post1.id, user_id: user1.id)
comment2 = Comment.create(
	content: "Hello this is the second comment", post_id: post1.id, user_id: user1.id)
comment3 = Comment.create(
	content: "Finally this is third comment", post_id: post1.id, user_id: user1.id)

 

print "\n Seeding Done."
