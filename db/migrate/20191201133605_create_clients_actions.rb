class CreateClientsActions < ActiveRecord::Migration[6.0]
  def change
    create_table :clients_actions do |t|
      t.references :client, null: false, foreign_key: true
      t.references :action, null: false, foreign_key: true
      t.string :submit_date
      t.string :complete_date
      t.string :status
      t.string :note

      t.timestamps
    end
  end
end
