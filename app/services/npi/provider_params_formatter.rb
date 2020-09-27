module Npi
  class ProviderParamsFormatter
    def self.call(attributes)
      new_attributes = attributes.with_indifferent_access

      new_attributes[:addresses] && new_attributes[:addresses_attributes] = new_attributes.delete(:addresses)
      new_attributes[:identifiers] && new_attributes[:identifiers_attributes] = new_attributes.delete(:identifiers)
      new_attributes[:other_names] && new_attributes[:other_names_attributes] = new_attributes.delete(:other_names)
      new_attributes[:practiceLocations] && new_attributes[:practice_locations_attributes] = new_attributes.delete(:practiceLocations)
      new_attributes[:endpoints] && new_attributes[:endpoints_attributes] = new_attributes.delete(:endpoints)
      new_attributes[:taxonomies] && new_attributes[:taxonomies_attributes] = new_attributes.delete(:taxonomies)

      new_attributes
    end
  end
end
