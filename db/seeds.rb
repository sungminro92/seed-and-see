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

radish = Plant.create(
	name: 'Radish', days_to_water:'', img_url: 'https://image.ibb.co/fx7jVk/3.png' )

onion = Plant.create(
	name: 'Onion', days_to_water:'', img_url: 'https://image.ibb.co/kpnjVk/6.png' )

tomato = Plant.create(
	name: 'Tomato', days_to_water:'', img_url: 'https://image.ibb.co/muRYO5/1.png' )

strawberry = Plant.create(
	name: 'Strawberry', days_to_water:'', img_url: 'https://image.ibb.co/cHhjVk/2.png' )

beet = Plant.create(
	name: 'Beet', days_to_water:'', img_url: 'https://image.ibb.co/b2Yf35/7.png' )

beans = Plant.create(
	name: 'Beans', days_to_water:'', img_url: 'https://image.ibb.co/nhCJqk/8.png' )

pepper = Plant.create(
	name: 'Red Pepper', days_to_water:'', img_url: 'https://image.ibb.co/muNwbQ/10.png' )

cucumber = Plant.create(
	name: 'Cucumber', days_to_water:'', img_url: 'https://image.ibb.co/dBdrAk/11.png' )

squash = Plant.create(
	name: 'Squash', days_to_water:'', img_url: 'https://image.ibb.co/egUCi5/12.png' )



post1 = Post.create(
	title: "POWMEOW!", description: "This is my cat in the garden!", img_url: "http://i.imgur.com/O9EobIJ.png", user_id: user1.id)



comment1 = Comment.create(
	content: "This is the first comment", post_id: post1.id, user_id: user1.id)
comment2 = Comment.create(
	content: "Hello this is the second comment", post_id: post1.id, user_id: user1.id)
comment3 = Comment.create(
	content: "Finally this is third comment", post_id: post1.id, user_id: user1.id)

 

print "\n Seeding Done."
