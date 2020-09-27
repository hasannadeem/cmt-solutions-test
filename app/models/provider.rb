class Provider < ApplicationRecord
  has_many :addresses
  has_many :identifiers
  has_many :taxonomies
  has_many :other_names
  has_many :practice_locations
  has_many :endpoints

  accepts_nested_attributes_for :addresses, :identifiers, :taxonomies, :other_names, :practice_locations, :endpoints

  def full_name
    [basic['name_prefix'], basic['first_name'], basic['middle_name'], basic['last_name']].compact.join(' ').strip
  end
end
