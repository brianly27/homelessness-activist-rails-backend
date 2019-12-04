class ClientsResourceSerializer < ActiveModel::Serializer
  attributes :id, :wants_resource, :has_resource

end
