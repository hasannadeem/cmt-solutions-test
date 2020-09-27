class AddSearchCountToProvider < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :search_count, :integer, default: 1, null: false
  end
end
