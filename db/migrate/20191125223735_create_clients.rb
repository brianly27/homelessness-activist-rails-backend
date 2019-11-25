class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :alias
      t.string :email
      t.string :location
      t.string :cellphone
      t.boolean :alive
      t.float :income

      t.timestamps
    end
  end
end
