class CreateClientsResources < ActiveRecord::Migration[6.0]
  def change
    create_table :clients_resources do |t|
      t.references :client, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true
      t.boolean :wants_resource
      t.boolean :has_resource
      t.datetime :start_date
      t.datetime :complete_date
      t.string :note

      t.timestamps
    end
  end
end
