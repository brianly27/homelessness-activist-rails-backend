class Action < ApplicationRecord
  belongs_to :resource
  has_many :clients_actions
  has_many :clients, through: :clients_actions
end
