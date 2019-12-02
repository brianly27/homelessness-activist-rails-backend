class ClientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :alias, :email, :location, :cellphone, :alive, :income
  has_many :users
  has_many :clients_resources
  has_many :clients_actions
  
end