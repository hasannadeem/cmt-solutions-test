class CreateTaxonomies < ActiveRecord::Migration[5.1]
  def change
    create_table :taxonomies do |t|
      t.string :code
      t.string :desc
      t.string :license
      t.boolean :primary
      t.string :state
      t.string :taxonomy_group
      t.references :provider, index: true

      t.timestamps
    end
  end
end
