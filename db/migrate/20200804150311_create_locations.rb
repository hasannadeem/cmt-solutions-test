class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :address_1
      t.string :address_2
      t.string :address_purpose
      t.string :address_type
      t.string :city
      t.string :country_code
      t.string :country_name
      t.string :postal_code
      t.string :state
      t.string :telephone_number
      t.string :type
      t.string :fax_number
      t.datetime :update_date
      t.references :provider, index: true

      t.timestamps
    end
  end
end
