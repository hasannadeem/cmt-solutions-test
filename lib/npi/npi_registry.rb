# frozen_string_literal: true

class Npi::NpiRegistry
  include HTTParty
  base_uri 'https://npiregistry.cms.hhs.gov/api/'

  def initialize(version = 2.1)
    @version = version
  end

  def provider(npi)
    self.class.get('', { query: { number: npi, version: @version } })

  rescue StandardError => e
    { 'Errors': { description: 'there is something wrong' } }
  end
end
