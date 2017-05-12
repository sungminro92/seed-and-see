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
	name: 'Sungmin Ro', email: 'sungminro@gmail.com', password: '123456', password_confirmation:'123456', img_url: "http://i.imgur.com/JF9p0av.png")

user2 = User.create(
	name: 'Jesse Lee', email: 'jesselee@gmail.com', password: '123456', password_confirmation:'123456', img_url: "http://i.imgur.com/OH3cV8K.jpg")

user3 = User.create(
	name: 'Gatsby', email: 'gatsby@gmail.com', password: '123456', password_confirmation:'123456', img_url: "http://i.imgur.com/bbaf9BW.jpg")

user4 = User.create(
	name: 'Pepe', email: 'pepe@gmail.com', password: '123456', password_confirmation:'123456', img_url: "http://i.imgur.com/b1nl3KT.jpg")

user5 = User.create(
	name: 'George Washington', email: 'george@gmail.com', password: '123456', password_confirmation:'123456', img_url: "https://upload.wikimedia.org/wikipedia/commons/b/b6/Gilbert_Stuart_Williamstown_Portrait_of_George_Washington.jpg")

user6 = User.create(
	name: 'Scarlett Johansson', email: 'sj@gmail.com', password: '123456', password_confirmation:'123456', img_url: "http://www.myfilmviews.com/wp-content/uploads/2012/12/scarlett_johansson.jpg")

user7 = User.create(
	name: 'Batman', email: 'batman@gmail.com', password: '123456', password_confirmation:'123456', img_url: "https://i.ytimg.com/vi/8BIObSCQWLs/maxresdefault.jpg")



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
	title: "Intruder in my garden", description: "I found this plant (which I did not plant) growing in one of my garden pots. It does not look like a weed to me. Can anyone identify the plant?", img_url: "http://i.imgur.com/ShObbof.jpg", user_id: user1.id)
post2 = Post.create(
	title: "Can you tell me what kind of blue flower this is?", description: "It's my Valentine’s date’s favorite flower, but she won't tell me what kind of flower it is. I want to get her a bouquet of them for V-Day, but I need to know what kind of flowers I am getting.
		Please and thank you!", img_url: "http://i.imgur.com/JOpKGII.jpg", user_id: user2.id)
post3 = Post.create(
	title: "What is this plant growing on power lines?", description: "Please tell me!", img_url: "http://i.imgur.com/rgHhRa4.jpg", user_id: user3.id)
post4 = Post.create(
	title: "Some of the fastest growing plants (food)...", description: "The fastest-growing food plant is watermeal (Wolffia globosa or Wolffia arrhiza). Each individual speck is less than a millimeter long; it has no leaves, stems, or roots. They float on the surface of calm ponds. Individual watermeal are small, but they reproduce by splitting in half, like bacteria. Each plant splits into two plants about every four days, and then four days later those plants split again, so the amount of watermeal you have doubles every four days.
Watermeal is edible and high protein. It is sometimes used as cheap food in Myanmar, Laos, or Thailand, where it is called khai-nam or pham. In general, though, it is regarded as a low-status “poverty food,” and people prefer to feed all that fast-growing protein to chickens, pigs, or carp and then eat them instead. You wouldn’t ever find watermeal at a restaurant or feast. So maybe it doesn’t count as a “food plant.”", img_url: "http://i.imgur.com/cfAkgEO.jpg", user_id: user4.id)
post5 = Post.create(
	title: "What owning a bonsai is like!", description: "Bonsai are living sculpture, the only type of art where your canvas has as much to say about the final composition as the artist.
People assume that growing a bonsai is like growing a houseplant. It’s not: It’s more like breeding exotic pets. In the photo above, I’m trimming the massive roots on one of the masterpiece bonsai in the James J. Smith Bonsai Gallery at Heathcote Botanical Garden in Ft. Pierce, FL. This is a significant bonsai that has been in training for about 40 years.", img_url: "http://i.imgur.com/XZnSoj3.jpg", user_id: user5.id)
post6 = Post.create(
	title: "What's so bad about bamboo?", description: "I have five species of bamboo on my property and I love it. It’s the fastest growing woody plant in the world: Individual culms (stalks) can grow as fast as a foot per day (my elderly father-in-law would sometimes relax in our yard with a lawn chair and say he was watching the stuff grow).", img_url: "http://i.imgur.com/8o8Wm9z.gif", user_id: user1.id)
post7 = Post.create(
	title: "What is the name of this flower that blooms in every 50 years?", description: "This picture has been circulating in social media stating that it’s a flower which blooms once in 50 years and it is called \"Sankhupushpam\"", img_url: "http://i.imgur.com/CJ9yXDS.jpg", user_id: user1.id)


comment1_post1 = Comment.create(
	content: "I guessed Fraxinus because of the arrangement of leaves, which is pinnately compound with opposite arrangement along stems. The pattern of stems called \"opposite\" isn't as common as the \"alternating\" arrangement. It also looks hefty enough to become a tree. Keep us posted.", post_id: post1.id, user_id: user2.id)
comment2_post1 = Comment.create(
	content: "I agree that it doesn't resemble a weed per se. It could be a seedling Ash tree, genus Fraxinus. That might make it a weed tree, given some ashes' propensity to self-sow to excess. It's easier to identify plants when depictions include flowers or seed. Maybe this will blossom in the coming years.", post_id: post1.id, user_id: user3.id)
comment3_post1 = Comment.create(
	content: "The bods look just like Dahlia buds, but they open to reveal flowers that are like the center a of a Dahlia or any aster-like flower, with no petals that I can detect. Dahlias are native to Mexico; I don’t know to what extent any wild species of the genus have found homes in the US. If this plant has bloomed, would you be kind enough to post a photo of the result?", post_id: post1.id, user_id: user4.id)

comment1_post2 = Comment.create(
	content: "Hydrangea macrophylla, Mophead group; variety is possibly Nikko Blue also called Hortensia", post_id: post2.id, user_id: user1.id)
comment2_post2 = Comment.create(
	content: "It’s a blue Hydrangea, most likely Hydrangea macrophylla. The flowers of this ornamental shrub come in a variety of hues.", post_id: post2.id, user_id: user6.id)
comment3_post2 = Comment.create(
	content: "Depending on where you are, it’s called either a Hortensia or Hydrangea. You can easily grow them too. In many varieties, the colour can be changed by modifying the Ph of the soil. Blue for more acidic ones, and red/pink for more alkaline ones. Have fun!", post_id: post2.id, user_id: user7.id)
comment4_post2 = Comment.create(
	content: "It is a hydrangea, and I don’t know if you can get them as a cut flower for bouquets. They grow as a shrub, so you might be able to find one in a pot for her, that she can grow in her garden if she has one.", post_id: post2.id, user_id: user3.id)
comment5_post2 = Comment.create(
	content: "That is a hydrangea. What I know about them is they grow as shrubs. They are perennial in most locations. Many plant and flower vendors have decorative plants and flowers they sell in pots but are not hardy for the region, people keep them for a while, then they die. People should be aware that most decorative plants florist sell are annual and not perennial versions of plants and flowers. The “annual” version is much more showy, but not hardy to be replanted. They usually cannot be planted and thrive because they are more “hot house” versions not adapted to grow in your growing season. One shot plants.", post_id: post2.id, user_id: user4.id)
comment6_post2 = Comment.create(
	content: "One thing unusual about some varieties of Hydrangeas are there is a variety that is sensitive to the levels of acids and bases in the soil. These are color change hydrangeas. They can change from pink to blue depending on the acid/base composition of the soil. (PH levels. You can throw some potash on one side and lime an another and have 2 color blooms if you do it right!) They are known as a spring flower. Hydrangeas shrubs can give a pleasant show of flowers in the spring. They do not flower the rest of season, but have pleasant foliage. They are susceptible to some diseases and insects like most plants. They can be a perennial plant protected, up to the border of canada. They like a good amount of morning sun and in blooming season large amounts of water. They are good to be planted by a downspout, with south or east direction sun. They like moderately rich, porous, and well drained soil. Like most aromatic or blooming plants they need at minimum 3 good strong hours of sunlight. Lack of sunlight is where most plants fail.", post_id: post2.id, user_id: user3.id)

comment1_post3 = Comment.create(
	content: "Wind-born seeds of the bromeliad Tillandsia flexuosa have long been lodging, sprouting and appearing to thrive in the grooves of aluminum-wire wrapped electric power lines. These plants grow unprotected in the blazing tropical sun using a thick layer of water- and nutrient-absorbing scales to pull sustenance from the air. Their roots hold them fast to the cable.", post_id: post3.id, user_id: user1.id)
comment2_post3 = Comment.create(
	content: "It would be a plant in the Tillandsia genus, otherwise known as Air Plants.
(It's a big genus, there are over 650 species of them, also, they are related to the bromilliads, and I've seen them growing on power lines in Nicaragua as well. But, the shape of the ones in your photo are Tillandsias)
Anyway, the the plants in the Tillandsia genus are known to be epiphytes or aerophytes, which means they are happy growing on things and absorbing all the water they need from the air. Which is why buying them glued onto fridge magnets was a trend in the 90’s.", post_id: post3.id, user_id: user6.id)
comment3_post3 = Comment.create(
	content: "Hard to see from your picture, but it is well known that plants from the Tillandsia genus can grow pretty much anywhere (but soil:)).
They are native to Central and South America, usually they grow attached to limbs of other plants. rocks or desert sands that get coastal fog like in the Atacama Desert. And that is how they get watered. Usually through fog, drizzle or just humid air. Tillandsia genus belongs to the Bromeliaceae family. One of its better-known species is the pineapple!
It will be hard to identify what exact species you have on your picture, if it is indeed a Tillandsia, you have some 650 to choose from.", post_id: post3.id, user_id: user7.id)
comment4_post3 = Comment.create(
	content: "I agree with the others that these will be Air plants Tillandsia sp. You would need a much more detailed photo to identify which one and given that those look like high voltage power cables I think it would be inadvisable to try and get one.", post_id: post3.id, user_id: user4.id)

comment1_post4 = Comment.create(
	content: "RADISHES GREEN ONIONS LETTUCE BABY CARROTS SPINACH KALE & OTHER LEAFY GREENS PEAS BUSH BEANS Turnips Cucumber Squash ", post_id: post4.id, user_id: user3.id)
comment2_post4 = Comment.create(
	content: "If you are starting a new vegetable garden or replanting one after the end of Winter it is useful to know which vegetables will provide quick yields. Some plants such as radishes reach maturity within 20-30 days and can be fully harvested after this period. Other plants be trimmed to provide leaves and shoots on the way to the plant reaching maturity.
Turnips are a good example of this. Leaves can be harvested from the tops after about 25 days which the turnip roots or tubers are still growing. Of course, you need to take care not to take too many leaves as this may affect the growth rate of the tubers.
The same applies for bulb onions which may take months to fully mature. But you can start harvesting the greens within 25-30 days and the plants will continue to develop the bulb and to and produce more more shoots.
Or you may want top grow scallions and harvest the entire plants which mature within 20-30 days.
", post_id: post4.id, user_id: user1.id)
comment3_post4 = Comment.create(
	content: "Sprout…they grow in the jar in 3–4 days. Delicious and easy to make and very nutritious without planting. I get my seed online", post_id: post4.id, user_id: user7.id)

comment1_post5 = Comment.create(
	content: "Mature bonsai require constant care to maintain their beauty.", post_id: post5.id, user_id: user1.id)
comment2_post5 = Comment.create(
	content: "If you want to get into bonsai, don’t purchase one from a kiosk at the mall! Those are usually only picturesque little cuttings from a juniper tree, or little grafted ficus, and they rarely come with meaningful directions. They’re meant only to look cute for a couple of weeks, and put some money into the kiosk-owner’s pocket, and then die.
Start by doing some reading on growing bonsai, to learn what you’re getting into. Decide what kind of bonsai’d plant you can provide living conditions for, then find a bonsai grower near you, or at the least a small garden store that has some older bonsai, and visit them to see if they have what you need. Also, pick their brains shamelessly.
If you don’t have the patience/interest to learn about bonsai first, you probably won’t be successful with them, and you’d be better off to put your money into a much simpler and less demanding form of plantlife, like a simple houseplant.", post_id: post5.id, user_id: user2.id)
comment3_post5 = Comment.create(
	content: "I love bonsai. It can definitely improve the room (or wherever you keep it). If you naturally like to care for plants, I would suggest you to get a ficus bonsai for starters. They are a cheaper category and they are much easier to care for than other bonsai trees.", post_id: post5.id, user_id: user3.id)

comment1_post6 = Comment.create(
	content: "Many people have concerns about bamboo being invasive.
Bamboo is not bad in the right context! Bamboo has many great uses!
One thing to understand is that various bamboos is not all the same. They are generally “clumpers” or “runners”. The clumping bamboos don’t spread quickly, but the runners send roots out to spread to new areas.", post_id: post6.id, user_id: user2.id)
comment2_post6 = Comment.create(
	content: "In most climates it spreads and becomes impossible to control or get rid of. It can grow through concrete foundations and destroy wood fences. Previous owners of our house planted some and we are still trying to get rid of it 10 years later. It sucks up water and grows incredibly fast. Don't believe “clumping” varieties will stay put either!
its a beautiful plant but in my opinion, has no business in small yards or out of containers. (I live in the Pacific Northwest USA)", post_id: post6.id, user_id: user3.id)
comment3_post6 = Comment.create(
	content: "Bamboo are invasive species. the flip side to them are the shoots. People eat them and many Asians will gladly pick them from your yard if you give them permission. Bamboo shoots are rather delicious in Asian cuisines. :)", post_id: post6.id, user_id: user5.id)

comment1_post7 = Comment.create(
	content: "It’s a complete hoax.
The image shown in the question is nothing but a genus of Sea Snails. It’s just a species of sea snail known as Hirtomurex teramachii.", post_id: post7.id, user_id: user3.id)
comment2_post7 = Comment.create(
	content: "I do not think this is a flower of any kind. But it is a sea shell photograph of which was taken by one Kuroda in 1959. Hirtomurex is a genus of sea snails, marine gastropod mollusks in the subfamily Coralliophilinae, the coral snails, within the family Muricidae, the murex snails and rock snails.", post_id: post7.id, user_id: user6.id)
comment3_post7 = Comment.create(
	content: "The picture you have there is made up. There is no flower like that. But there are plants that take a long time to flower for the first time.

A saguaro cactus takes at least 70 years to do so in the wild, but will then flower every spring without fail for the next 150 years or so.", post_id: post7.id, user_id: user4.id)


print "\n Seeding Done."
