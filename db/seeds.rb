# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

resp = RestClient.get('http://shibe.online/api/shibes?count=100&urls=true&httpsUrls=true')
json = JSON.parse(resp)

json.each do |doge|
  d = Cat.create(image_url: doge,
    health_points: rand(100-200),
    attack_points: rand(20-50),
    defense_points: rand(30-50),
    speed_points: rand(1-50),
  )
  puts "Created #{d}!"
end
