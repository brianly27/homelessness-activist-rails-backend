# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Client.destroy_all
UsersClient.destroy_all
ClientsResource.destroy_all
Resource.destroy_all
Action.destroy_all

user1 = User.create(first_name: "brian")

client1 = Client.create(first_name: "joe")

uc1= UsersClient.create(user_id: user1.id, client_id: client1.id)

resource1 = Resource.create(name: "resource 1")

cr1 = ClientsResource.create(client_id: client1.id, resource_id: resource1.id)

action1 = Action.create(resource_id: resource1.id, name: "action 1")