class CreateIdentifiers < ActiveRecord::Migration[5.1]
  def change
    create_table :identifiers do |t|
      t.string :code
      t.string :desc
      t.string :identifier
      t.string :issuer
      t.string :state
      t.references :provider, index: true

      t.timestamps
    end
  end
end
