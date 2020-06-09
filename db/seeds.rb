# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ToDoItem.destroy_all
User.destroy_all

User.create(username: "Hannah", password: "Hannah", location: "80216")
User.create(username: "Blake", password: "Blake", location: "80205")
User.create(username: "Ben", password: "Ben", location: "19003")
User.create(username: "Will", password: "Will", location: "59336")

ToDoItem.create(activity: "yoga")
ToDoItem.create(activity: "take vitamins")
ToDoItem.create(activity: "drink 2 cups of water")
ToDoItem.create(activity: "drink 2 cups of water")
ToDoItem.create(activity: "laundry")