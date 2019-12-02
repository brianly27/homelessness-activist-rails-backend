class ClientsAction < ApplicationRecord
  belongs_to :client
  belongs_to :action
end
