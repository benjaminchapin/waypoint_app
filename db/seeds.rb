# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Hike.create(name: "Test Hike", description: "Test hike", user_id: 1, difficulty_level: "intermediate")

# Hike.create(name: "River Hike", description: "Scenic hike along a river", user_id: 1, difficulty_level: "intermediate", start_lat: 41.535513, start_long: -88.182381, end_lat: 41.522405, end_long: -88.194226)

# Hike.create(name: "Forest Hike", description: "Scenic hike through a forest", user_id: 1, difficulty_level: "intermediate", start_lat: 41.526130,  start_long: -88.194913, end_lat: 41.529535, end_long: -88.193969)

Waypoint.create(name: "Secret Waterfall", image_url: "https://cdn.getyourguide.com/img/tour_img-1315103-146.jpg", latitude: 41.527094, longitude: -88.191136, hike_id: 3, user_id: 1)

Waypoint.create(name: "Secret Tree", image_url: "https://www.ctvnews.ca/polopoly_fs/1.4512683.1563403908!/httpImage/image.jpg_gen/derivatives/landscape_1020/image.jpg", latitude: 41.529086, longitude: -88.194140, hike_id: 4, user_id: 1)