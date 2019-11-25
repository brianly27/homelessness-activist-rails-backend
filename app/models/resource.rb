class Resource < ApplicationRecord
    has_many :clients_resources
    has_many :clients, through: :clients_resources
    has_many :actions
end
