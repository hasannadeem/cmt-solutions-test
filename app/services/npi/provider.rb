module Npi
  class Provider
    def self.create(npi_number)
      provider = existing_provider(npi_number)
      return { status: 200, provider: provider } if provider.present?

      npi_registry = Npi::NpiRegistry.new
      response = npi_registry.provider(npi_number)

      return { status: 422, response: response } if response['Errors'].present?

      attributes = response['results'].first
      new_attributes = Npi::ProviderParamsFormatter.call(attributes)

      provider = ::Provider.new(new_attributes)

      if provider.save
        { status: 200, provider: provider }
      else
        { status: 422, message: provider.errors.full_messages.to_sentence }
      end
    end

    private

      def self.existing_provider(npi_number)
        provider = ::Provider.find_by_number(npi_number)
        provider&.update!(search_count: provider.search_count.succ)
        provider
      end
  end
end
