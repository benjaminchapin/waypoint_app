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

# Waypoint.create(name: "Secret Waterfall", image_url: "https://cdn.getyourguide.com/img/tour_img-1315103-146.jpg", latitude: 41.527094, longitude: -88.191136, hike_id: 3, user_id: 1)

# Waypoint.create(name: "Secret Tree", image_url: "https://www.ctvnews.ca/polopoly_fs/1.4512683.1563403908!/httpImage/image.jpg_gen/derivatives/landscape_1020/image.jpg", latitude: 41.529086, longitude: -88.194140, hike_id: 4, user_id: 1)

# Hike.create(name: "Panhandle Hike", description: "Hike around the panhandle park in SF", user_id: 2, difficulty_level: "novice", start_lat: 37.773406,  start_long: -122.440883, end_lat: 37.771049, end_long: -122.452227)

# Hike.create(name: "Sunshine Gardens Hike", description: "Hike through the Sunshine Gardens neighborhood in SF", user_id: 2, difficulty_level: "novice", start_lat: 37.661781,  start_long: -122.438316, end_lat: 37.668879, end_long: -122.437262)

# Hike.create(name: "Golden Gate Park Hike ", description: "Hike through Golden Gate Park", user_id: 2, difficulty_level: "intermediate", start_lat: 37.775395,  start_long: -122.456325, end_lat: 37.763842, end_long: -122.509406)

Waypoint.create(name: "Dutch Windmill", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/GGParkNorthWindmill2.jpg/1200px-GGParkNorthWindmill2.jpg", description: "Historic windmill, 1 of 2 in the Golden Gate Park, constructed in 1903 & restored in 1981.", latitude: 37.770771, longitude: -122.509362, hike_id: 12, user_id: 2)

Waypoint.create(name: "Stow Lake Boathouse", image_url: "https://1pv46r6ky46uvoy8eq27h1ec-wpengine.netdna-ssl.com/wp-content/uploads/2014/03/Pagoda.jpg", description: "the center for boat rentals", latitude: 37.771638, longitude: -122.475818, hike_id: 12, user_id: 2)

Waypoint.create(name: "Old Speedway Meadow Picnic Area", image_url: "https://sfrecpark.org/ImageRepository/Document?documentID=4363", description: "Bring your own blanket or chairs", latitude: 37.766641, longitude: -122.498084, hike_id: 12, user_id: 2)

Waypoint.create(name: "Shakespeare Garden", image_url: "https://goldengatepark.com/wp-content/uploads/2011/02/Shakespeare-Garden-San-Francisco.jpg", description: "illed with flowers and plants typically found in the works of William Shakespeare", latitude: 37.769126, longitude: -122.466331, hike_id: 12, user_id: 2)

# Hike.create(name: "Forest Hike", description: "Scenic hike through a forest", user_id: 2, difficulty_level: "intermediate", start_lat: 41.526130,  start_long: -88.194913, end_lat: 37.763842, end_long: -122.509406)