class ActionSerializer < ActiveModel::Serializer
  attributes :id, :resource_id, :name, :description, :form, :submit_address, :readme, :contact_name, :contact_email, :contact_phone, :location_name
end
