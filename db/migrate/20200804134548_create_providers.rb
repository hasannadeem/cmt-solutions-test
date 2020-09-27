class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.integer :created_epoch
      t.integer :last_updated_epoch
      t.integer :number
      t.string :enumeration_type
      t.jsonb :basic

      t.timestamps
    end
  end
end
