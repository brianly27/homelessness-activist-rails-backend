class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.references :resource, null: false, foreign_key: true
      t.string :name
      t.string :form
      t.string :readme
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_email
      t.string :location_name
      t.decimal "location_lat", precision: 10, scale: 6
      t.decimal "location_long", precision: 10, scale: 6

      t.timestamps
    end
  end
end
