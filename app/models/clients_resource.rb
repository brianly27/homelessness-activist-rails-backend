class ClientsResource < ApplicationRecord
  belongs_to :client
  belongs_to :resource
end
