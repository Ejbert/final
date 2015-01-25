# Deletes everything from the database to start fresh
puts "Deleting all records from the database"
User.delete_all
Friend.delete_all
Ingredient.delete_all
Dish.delete_all
Recipe.delete_all

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
Friend.create(user_id: greg.id, friends: jane.id)

# Create ingredients
puts "Creating ingredients..."
cheese = Ingredient.create(name: "Cheese")
pizza_sauce = Ingredient.create(name: "Pizza Sauce")
flour = Ingredient.create(name: "Flour")
pepperoni = Ingredient.create(name: "Pepperoni")
olives = Ingredient.create(name: "Olives")
onions = Ingredient.create(name: "Onions")

# Create dishes
puts "Creating dishes..."
pepperoni_pizza = Dish.create(name: "Pepperoni Pizza", description: "A delicious, meaty and greasy classic pizza")
cheese_pizza = Dish.create(name: "Cheese Pizza", description: "Ask for extra cheese")
veggie_pizza = Dish.create(name: "Veggie Pizza", description: "For the healthnuts")

# Create recipe
puts "Creating recipes..."

 # Create the recipe for Pepperoni Pizza
Recipe.create(dish_id: pepperoni_pizza.id, ingredient_id: cheese.id, quantity: 0.5, unit: 'lbs')
Recipe.create(dish_id: pepperoni_pizza.id, ingredient_id: flour.id, quantity: 2, unit: 'cups')
Recipe.create(dish_id: pepperoni_pizza.id, ingredient_id: pizza_sauce.id, quantity: 4, unit: 'oz')
Recipe.create(dish_id: pepperoni_pizza.id, ingredient_id: cheese.id, quantity: 0.5, unit: 'lbs')
Recipe.create(dish_id: pepperoni_pizza.id, ingredient_id: pepperoni.id, quantity: 6, unit: 'oz')

 # Create the recipe for Cheese Pizza
Recipe.create(dish_id: cheese_pizza.id, ingredient_id: cheese.id, quantity: 0.5, unit: 'lbs')
Recipe.create(dish_id: cheese_pizza.id, ingredient_id: flour.id, quantity: 2, unit: 'cups')
Recipe.create(dish_id: cheese_pizza.id, ingredient_id: pizza_sauce.id, quantity: 4, unit: 'oz')
Recipe.create(dish_id: cheese_pizza.id, ingredient_id: cheese.id, quantity: 0.5, unit: 'lbs')


