# Deletes everything from the database to start fresh
puts "Deleting all records from the database"
User.delete_all
Friend.delete_all
Restaurant.delete_all
Review.delete_all
List.delete_all

# Create the users
puts "Creating users..."
eric = User.create(username: "ejbert", first_name: "Eric", last_name:"Bertelsen", email:"eric.bertelsen@gmail.com", password:"****")
orchid = User.create(username: "orchidliu", first_name: "Orchid", last_name:"Liu", email:"orchid.jade.liu@gmail.com", password:"****")
jane = User.create(username: "mjbert", first_name: "Jane", last_name:"Bertelsen", email:"mjbert@gmail.com", password:"****")
kristen = User.create(username: "kmbert", first_name: "Kristen", last_name:"Bertelsen", email:"kristen.bertelsen@gmail.com", password:"****")
greg = User.create(username: "gjbert", first_name: "Greg", last_name:"Bertelsen", email:"gjbertgmail.com", password:"****")

puts "Creating friends..."

# Create Eric's friends
Friend.create(user_id: eric.id, friend: orchid.id)
Friend.create(user_id: eric.id, friend: jane.id)
Friend.create(user_id: eric.id, friend: kristen.id)
Friend.create(user_id: eric.id, friend: greg.id)

# Create Orchid's friends
Friend.create(user_id: orchid.id, friend: eric.id)
Friend.create(user_id: orchid.id, friend: kristen.id)

# Create Jane's friends
Friend.create(user_id: jane.id, friend: eric.id)
Friend.create(user_id: jane.id, friend: kristen.id)
Friend.create(user_id: jane.id, friend: greg.id)

# Create Kristen's friends
Friend.create(user_id: kristen.id, friend: eric.id)
Friend.create(user_id: kristen.id, friend: orchid.id)
Friend.create(user_id: kristen.id, friend: jane.id)

# Create Greg's friends
Friend.create(user_id: greg.id, friend: eric.id)
Friend.create(user_id: greg.id, friend: jane.id)

# Create restaurants
puts "Creating restaurants..."
boltwood = Restaurant.create(name: "Boltwood", description: "New, local American by former Publican chef", cuisine:"American", location: "Evanston")
the_cellar = Restaurant.create(name: "The Cellar", description: "Underground feel in ground-level restaurant", cuisine:"American", location: "Evanston")
burger_king = Restaurant.create(name: "Burger King", description: "Open 24 hours...", cuisine:"Fast Food", location: "Evanston")
taco_diablo = Restaurant.create(name: "Taco Diablo", description: "RIP", cuisine:"Mexican", location: "Heaven")
lyfe_kitchen = Restaurant.create(name: "LYFE Kitchen", description: "Healthy food chain", cuisine:"Health Food", location: "Evanston")

# Create reviews
puts "Creating reviews..."
Review.create(restaurant_id: boltwood.id, user_id: eric.id, rating: 4, review: "Great addition to Evanston dining scene, even if not quite up to expectations", notes: "Dollar oysters on some nights")
Review.create(restaurant_id: the_cellar.id, user_id: orchid.id, rating: 5, review: "Great good at totally reasonable prices", notes: "Try to sit in the back")

Review.create(restaurant_id: burger_king.id, user_id: eric.id, rating: 3, review: "Late night dance party is even better than the food", notes: "Never go during daylight")
Review.create(restaurant_id: burger_king.id, user_id: greg.id, rating: 5, review: "Best cheeseburgers this side of the Mississippi", notes: "Make your own soda mix")

Review.create(restaurant_id: taco_diablo.id, user_id: kristen.id, rating: 5, review: "Evanston sorely misses the tacos and vibe of this place", notes: "Have a taco before throwing back too many margaritas")


# Create lists
puts "Creating lists..."

need_to_try = List.create(user_id: eric.id, name: "Need to try")

date_night = List.create(user_id: eric.id, name: "Date night")

avoid = List.create(user_id: jane.id, name: "Avoid at all costs")

detox = List.create(user_id: greg.id, name: "For detox diet")

# Create list items
puts "Populating lists..."

List_Item.create(list_id: need_to_try.id, restaurant_id: lyfe_kitchen.id)
List_Item.create(list_id: need_to_try.id, restaurant_id: the_cellar.id)

List_Item.create(list_id: date_night.id, restaurant_id: boltwood.id)

List_Item.create(list_id: avoid.id, restaurant_id: burger_king.id)

List_Item.create(list_id: detox.id, restaurant_id: lyfe_kitchen.id)

