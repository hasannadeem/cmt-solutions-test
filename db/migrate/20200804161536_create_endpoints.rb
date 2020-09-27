class CreateEndpoints < ActiveRecord::Migration[5.1]
  def change
    create_table :endpoints do |t|
      t.string :address_1
      t.string :address_2
      t.string :address_type
      t.string :affiliation
      t.string :affiliationName
      t.string :city
      t.string :contentOtherDescription
      t.string :contentType
      t.string :contentTypeDescription
      t.string :country_code
      t.string :country_name
      t.string :endpoint
      t.string :endpointDescription
      t.string :endpointType
      t.string :endpointTypeDescription
      t.string :postal_code
      t.string :state
      t.string :use
      t.string :useDescription
      t.string :useOtherDescription
      t.references :provider, index: true

      t.timestamps
    end
  end
end
