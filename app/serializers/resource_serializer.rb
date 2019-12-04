class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :readme
  has_many :actions
end
