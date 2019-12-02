class ClientsActionSerializer < ActiveModel::Serializer
  attributes :id, :submit_date, :complete_date, :status, :note
end
