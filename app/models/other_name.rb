class OtherName < ApplicationRecord
  belongs_to :provider

  def full_name
    [prefix, first_name, middle_name, last_name].compact.join(' ').strip
  end
end
