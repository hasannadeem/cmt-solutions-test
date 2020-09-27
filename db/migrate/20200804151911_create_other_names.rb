class CreateOtherNames < ActiveRecord::Migration[5.1]
  def change
    create_table :other_names do |t|
      t.string :code
      t.string :credential
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :prefix
      t.string :type
      t.references :provider, index: true

      t.timestamps
    end
  end
end
