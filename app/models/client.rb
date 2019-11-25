class Client < ApplicationRecord
    has_many :users_clients
    has_many :users, through: :users_clients
    has_many :clients_resources
    has_many :surveys, through: :clients_resources
end
