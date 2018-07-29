# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# resp = RestClient.get('http://shibe.online/api/shibes?count=100&urls=true&httpsUrls=true')
# json = JSON.parse(resp)
#
# json.each do |doge|
#   d = Cat.create(image_url: doge,
#     health_points: rand(100-200),
#     attack_points: rand(20-50),
#     defense_points: rand(30-50),
#     speed_points: rand(1-50),
#   )
#   puts "Created #{d}!"

Cat.delete_all

catsArray=
 [
   "http://cdn.shibe.online/cats/6a8c91b61b3e5534576ef33bd0ca8b0e66edffd7.jpg",
   "http://cdn.shibe.online/cats/882c8adf3d8bacc72b8f57f390592ab707c231f5.jpg",
   "http://cdn.shibe.online/cats/8cc65779cfe8e2320ea1a2c4791bbbf07f1327ff.jpg",
   "http://cdn.shibe.online/cats/af2636a7221ae0a4f8bd91ab7b887b25c22fce39.jpg",
   "http://cdn.shibe.online/cats/89046fa51b622b659a24e62345dc25bcfd2e864e.jpg",
   "http://cdn.shibe.online/cats/c510d59e55ff9cb60b4565dcf9c449c69d8c621a.jpg",
   "http://cdn.shibe.online/cats/db97963b9653e114f7b206797d16361ae6b584de.jpg",
   "http://cdn.shibe.online/cats/9257a8e8e0cf5dd112410d2c99644c0adc2c176e.jpg",
   "http://cdn.shibe.online/cats/cf9552a86662efd2b69595214976d6a219322382.jpg",
   "http://cdn.shibe.online/cats/6a16af79ae8f184ab27f9ca405243cf8bd3ae6b0.jpg",
   "http://cdn.shibe.online/cats/11df7ec3bd769067e0aab51e2557f4312cff59ea.jpg",
   "http://cdn.shibe.online/cats/5d967d79ec8e141774faf9eb1c45823b802ad6f8.jpg",
   "http://cdn.shibe.online/cats/c4381f8315a229ef5fecf0d97534168984f217aa.jpg",
   "http://cdn.shibe.online/cats/0369e9e887b0fa8c5c4e6debeddd6b50cf1f3b89.jpg",
   "http://cdn.shibe.online/cats/0bac792bb0ba25a0b32b77e9a0bee1129f2b15dc.jpg",
   "http://cdn.shibe.online/cats/989a6f2e4ebebaf2cd015037590e77b6b02d34e7.jpg",
   "http://cdn.shibe.online/cats/8ca5f73da789bf3b8346f1aac4cfeaca70485dc0.jpg",
   "http://cdn.shibe.online/cats/c7b0e375e838a3967fbab28c8b245daefa68847e.jpg",
   "http://cdn.shibe.online/cats/d3e759cf6eeb520e5d08382cfcede90550d1414b.jpg",
   "http://cdn.shibe.online/cats/84e507cf52000e66e97043942bd64049f887bd77.jpg",
   "http://cdn.shibe.online/cats/0c7e8471555df2f366ea61d5010e9374a671a958.jpg",
   "http://cdn.shibe.online/cats/05005ff64fabfb4740fe4719448b2808656906bc.jpg",
   "http://cdn.shibe.online/cats/315e9321933f3c0aeeb14c299f4dcb3ef302c336.jpg",
   "http://cdn.shibe.online/cats/2a1e287c545d7fc1471c5335de4cc125f9ca21b8.jpg",
   "http://cdn.shibe.online/cats/b6807023c34cd924a13f5673ad2982a443472ca3.jpg"
 ]

catsArray.map do |cat|
{ health_points: rand(100...200),
 attack_points: rand(100...150),
 defense_points: rand(100...150),
 speed_points: rand(100...150),
 image_url: cat}
  end.each do |cat|
 Cat.create(cat)
end
