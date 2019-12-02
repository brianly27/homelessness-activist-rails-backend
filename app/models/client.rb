class Client < ApplicationRecord
    has_many :users_clients
    has_many :users, through: :users_clients
    has_many :clients_resources
    has_many :resources, through: :clients_resources
    has_many :clients_actions
    has_many :actions, through: :clients_actions
end
