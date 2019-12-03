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
ClientsAction.destroy_all

user1 = User.create(first_name: "brian")
user2 = User.create(first_name: "ian")
user3 = User.create(first_name: "krista")
user4 = User.create(first_name: "justin")

client1 = Client.create(first_name: "joe")
client2 = Client.create(first_name: "bob")
client3 = Client.create(first_name: "sally")

uc1= UsersClient.create(user_id: user1.id, client_id: client1.id)
uc2= UsersClient.create(user_id: user1.id, client_id: client2.id)
uc3= UsersClient.create(user_id: user1.id, client_id: client3.id)

resource1 = Resource.create(name: "resource 1")
resource2 = Resource.create(name: "resource 2")
resource3 = Resource.create(name: "resource 3")
resource4 = Resource.create(name: "resource 4")


cr1 = ClientsResource.create(client_id: client1.id, resource_id: resource1.id)
cr2 = ClientsResource.create(client_id: client1.id, resource_id: resource2.id)
cr3 = ClientsResource.create(client_id: client1.id, resource_id: resource3.id)

action1 = Action.create(resource_id: resource1.id, name: "action 1")
action2 = Action.create(resource_id: resource1.id, name: "action 2")
action3 = Action.create(resource_id: resource1.id, name: "action 3")

action4 = Action.create(resource_id: resource2.id, name: "action 1")
action5 = Action.create(resource_id: resource2.id, name: "action 2")
action6 = Action.create(resource_id: resource2.id, name: "action 3")

action7 = Action.create(resource_id: resource3.id, name: "action 1")
action8 = Action.create(resource_id: resource3.id, name: "action 2")
action9 = Action.create(resource_id: resource3.id, name: "action 3")

action10 = Action.create(resource_id: resource4.id, name: "action 1")
action11 = Action.create(resource_id: resource4.id, name: "action 2")
action12 = Action.create(resource_id: resource4.id, name: "action 3")

ca1 = ClientsAction.create(client_id: client1.id, action_id: action1.id)
ca1 = ClientsAction.create(client_id: client1.id, action_id: action4.id)
ca1 = ClientsAction.create(client_id: client1.id, action_id: action7.id)
